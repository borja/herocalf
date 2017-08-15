require 'sinatra'

class App < Sinatra::Base
# TODO: Configure and helpers to a folder. Clean up!
  configure do
    enable :sessions
  end

  helpers do
    def username
      erb :'layout/username'
    end
  end

  # TODO: Error must be ERB (as posible)
  before '/secure/*' do
    unless session[:identity]
      session[:previous_url] = request.path
      @error = print_error(request.path)
      halt erb(:login_form)
    end
  end

# GET methods

  get('/') {redirect '/inicio' } # Home website

  # Private Zone
  get('/secure/place') { erb :'private/secreto' }
  get('/login/form') { erb :login_form }
  get '/logout' do
    session.delete(:identity)
    erb :'alerts/logout'
  end

  # Templates with double-routing
  get '/:view/:param' do |view, param|
    preview(view)
  end

  # Templates with simple root-viewer
  get '/:view' do |view|
    preview(view)
  end

# POST methods

  post('/calculador') { preview('calculador') }
  post('/buscar')     { preview('heroes') }

  post '/login/attempt' do
    session[:identity] = params['username']
    where_user_came_from = session[:previous_url] || '/'
    redirect to where_user_came_from
  end
end
