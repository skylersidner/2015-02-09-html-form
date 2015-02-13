require "sinatra"

get "/welcome_page" do
  "Welcome to the webpage."
end

get "/hooray" do
  "HIP HIP HOORAY!  I'M SO IMPRESSED, D00D!"
end

get "/test" do
  @members = ["Gary", "Neal", "Virginia"]
  puts @members
  
end


get "/test_page" do
  @user_name = "Sky"
  erb :welcome, :layout => :boilerplate # finds the file in views (welcome.erb) and returns it
end


get "/" do #homepage
  # find file "welcome"; execute it within the layout "boilerplate"
  erb :welcome, :layout => :boilerplate
end

# get "/greet" do
#   #example of params:
#   # {"my_name" => "Sky", "your_name" => "that_guy"}
#
#   #person = "Sky"
#   person = params["my_name"] #call for the value of this key
#
#
#   "Hello, #{person}."
# end

get "/greet/:name" do #this passes a param key of {:name => "whatever_they_type_in_the_url"}
  
  person = params["my_name"] #call for the value of this key

  
  "Hello, #{person}. Your favorite name is #{params[:name]}."
end