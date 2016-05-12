require "sinatra"
require "cowsay"
require "sinatra/reloader"

get "/" do
  erb(:index, {layout: :default_layout})
end

post "/say" do
  @sentence = Cowsay.say params[:sentence]
  erb(:say, {layout: :default_layout})
end
