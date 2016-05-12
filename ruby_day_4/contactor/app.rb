require "sinatra"
require "sinatra/reloader"
require "data_mapper"

enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'password']
  end
end

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/mywebsite.db")

# table name will be `contacts`
class Contact
  include DataMapper::Resource

  property :id, Serial
  property :full_name, String
  property :email, String
  property :phone_number, String
  property :message, Text

end

class Subscriber

  include DataMapper::Resource

  property :id, Serial
  property :full_name, String
  property :email, String
end

DataMapper.auto_upgrade!

get "/" do
  if session[:visits].nil?
    session[:visits] = 0
  else
    session[:visits] += 1
  end
  erb(:index, {layout: :default})
end

get "/contact" do

  erb(:contact, {layout: :default})
end

post "/contact" do
  c = Contact.create params
  # params -> {"full_name"=>"Tammam Kbeili", "email"=>"tammam.kbeili@gmail.com", "phone_number"=>"7789948775", "message"=>"hello world"}
  erb(:contact_thankyou, {layout: :default})
end

# list all contacts in the database
get "/contacts" do
  protected!
  @contacts = Contact.all
  erb(:contacts, {layout: :default})
end

get "/subscribe" do
  erb :subscribe, layout: :default
end

post "/subscribe" do
  Subscriber.create(params)
  erb :subscribe_thankyou, layout: :default
end

get "/hello/:name" do |name|
  "Hello #{name}"
end

get "/contact/:id" do |id|
  protected!
  @contact = Contact.get(id)
  erb :contact_details, layout: :default
end
