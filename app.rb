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
  
  before '/secure/*' do
    unless session[:identity]
      session[:previous_url] = request.path
      @error = 'Disculpa, necesitas acceder para visitar esta página' + request.path
      halt erb(:login_form)
    end
  end
  
  # GET methods
  # Home website
  get('/') { erb :home }
  
  get('/login/form') { erb :login_form }
  get '/logout' do
    session.delete(:identity)
    erb :'alerts/logout'
  end
  
  # Private Zone
  get('/secure/place') { erb :'private/secreto' }
  
  # Templates with double-routing
  get '/:view/:param' do |view, _param|
    # TODO: Clean up this from app.rb
    es_element  = %w(aire agua fuego tierra).include?(view)
    es_sagrada  = %w(arena hielo sombra sangre).include?(view)
    es_plegaria = %w(plegarias execraciones).include?(view)
    # Custom case for redundant spell lists
    # TODO: Clean up this stuff
    case
      # Magic views
      when es_element  then preview('hechizos')
      when es_sagrada  then preview('sagradas')
      when es_plegaria then preview('plegarias')
      # Usual rooting
      else preview(view)
    end
  end
  
  # Templates with simple root-viewer
  get '/:view' do |view|
    campeones = %w(reservistas ausentes licenciados).include?(view)
    campeones ? preview('heroes') : preview(view)
  end
  
  # POST Routing views
   post('/calculador') { preview('calculador') }
   post('/buscar')     { preview('heroes') }
  
  # GET methods
  
  post '/login/attempt' do
    session[:identity] = params['username']
    where_user_came_from = session[:previous_url] || '/'
    redirect to where_user_came_from
  end
end
