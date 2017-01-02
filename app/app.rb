require 'sinatra/base'

class App < Sinatra::Base
  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
    also_reload './**/*.rb'
  end

  set :public_folder, proc { File.join(root, '..', 'public') }

  get '/' do
    @time = Time.now
    erb :index, layout: :'layouts/layout'
  end
end
