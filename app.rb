# require_relative 'config/environment'
# require_relative 'models/puppy'

# class App < Sinatra::Base

#   get '/' do
#     erb :index
#   end

#   get '/new' do
#     erb :create_puppy
#   end

#   post '/new' do
#     @name = params[:name]
#     @breed = params[:breed]
#     @age = params[:age]
#     erb :display_puppy
#   end

#   # post '/' do
#   #   @puppy = Puppy.new(params[:name], params[:breed], params[:age])
#   #   erb :display_puppy
#   # end
# end

require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @puppies = Puppy.all
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/new' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        erb :display_puppy
    end

end
