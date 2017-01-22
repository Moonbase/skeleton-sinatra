require 'sinatra/base'
require 'sinatra/config_file'

class App < Sinatra::Base
  register Sinatra::ConfigFile

  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
    also_reload './**/*.rb'
  end

  set :environments, %w{development test staging production}
  set :public_folder, proc { File.join(root, '..', 'public') }
  config_file '../config/app.yml'

  get '/' do
    @time = Time.now
    @greeting = settings.greeting
    erb :index, layout: :'layouts/layout'
  end
end
