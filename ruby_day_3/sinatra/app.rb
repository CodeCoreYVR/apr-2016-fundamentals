require "sinatra"
require "sinatra/reloader"

# get is a method from Sinatra and it refers to receiving an HTTP GET request
# "/" is the url recieved. "/" usually refers to the home page
get "/" do
  # "Hello Sinatra!"
  @random_number = rand(100)

  # this will look for a file named index.erb within a folder named `views` located within the same folder as this file (app.rb)
  erb(:index, {layout: :default_layout})
end

get "/about" do
  # "<html><head><title>hello world</title></head><body><h1>About Us</h1></body></html>"
  erb(:about, {layout: :default_layout})
end

get "/temperature" do
  erb(:temperature, {layout: :default_layout})
end

post "/convert" do
  # we have access to a varible called `params` that is of type Hash. they keys
  # will be the `name` attributes in the form. The values will be whatever the
  # user entered in the form fields. e.g:  {"temp_f"=>"123"}
  # Note that in Sinatra values are always Strings
  # (°F  -  32)  x  5/9
  @temp_f = params["temp_f"]
  @temp_c = (params["temp_f"].to_f - 32) * 5 / 9
  erb(:temperature, {layout: :default_layout})
end
