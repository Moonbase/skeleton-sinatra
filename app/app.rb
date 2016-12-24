require 'sinatra/base'
require 'sprockets'

class App < Sinatra::Base
  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  set :public_folder, proc { File.join(root, '..', 'public') }

  set :sprockets_env, Sprockets::Environment.new
  sprockets_env.append_path 'app/assets/'
  sprockets_env.css_compressor = :scss

  get '/assets/*' do
    env['PATH_INFO'].sub!('/assets', '')
    settings.sprockets_env.call(env)
  end

  get '/' do
    @time = Time.now
    erb :index, layout: :'layouts/layout'
  end
end
