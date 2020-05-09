require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
    erb :index
    end 
    
    get '/new' do
    erb :create_puppy
    end

    post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age]) #dynamic
    erb :display_puppy
    end
end


#In app.rb build out a GET request to load a home page. The home page should go to the main route /.

#The home page will also need a new view index.erb. This page should welcome you to the 
#Puppy Adoption Site. Add this view to the controller action.