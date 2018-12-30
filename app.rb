require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  # get '/' do
  #   'Testing infrastructure working!'
  # end

# Create a get '/' route that renders aindex.erb view with a form
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
   end
    # #we stored the players names in a session instead
    # of assigning them to instance variables
    # we enabled a session TO STORE INFO BETWEEN REQUESTS!


  get '/play' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :play
  end


  get '/attack' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb :attack
  end


run! if app_file == $0
end


# First, we are extracting parameters to state. Then, we are rendering a view.
  # Create a post '/names' route that uses params to render a play.erb view that displays the names

# POST-redirect loop to avoid rendering a view directly from a POST request/route.
# You will also use the session to store the user-submitted names between requests
#
# # In the post '/names' route, let's store the player names in the session instead of
# assigning them to instance variables:

# 1. submit the form to post '/names'
# 2. extract the submitted names from the params into the session
# 3. redirect to get '/play'
# 4. extract the names from the session to instance variables
