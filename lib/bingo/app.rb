module Sinapp
  class App < Sinatra::Base
    set :root, File.expand_path(File.join(Dir.pwd, '/'))

    register Sinatra::ConfigFile
    register Sinatra::AssetPack

    # Configuration
    set :environment, :development

    config_file 'config/config.yml'

    Compass.configuration do |c|
      c.project_path     = root
      c.sass_dir = 'assets/stylesheets'
      c.images_dir       = 'assets/images'
      c.http_generated_images_path = '/img'
      c.add_import_path  'assets/stylesheets'
    end

    set :haml, :format => :html5
    set :scss, Compass.sass_engine_options

    assets do
      serve '/js', from: 'assets/javascripts'
      js :head, [
        '/js/vendor/jquery.min.js',
        '/js/vendor/modernizr.js',
        '/js/vendor/application.js',
        '/js/head.js'
      ]

      js :tail, [
        '/js/foundation/foundation.js',
        '/js/foundation/foundation.*.js',
        '/js/foundation/index.js',
        '/js/tail.js'
      ]

      serve '/css', :from => 'assets/stylesheets'
      css :application, [
        '/css/app.css'
       ]

      js_compression :jsmin
      css_compression :sass

      serve '/img', from: 'assets/images'
    end

    # Simple helpers
    def copyright
      "&copy;#{Time.now.year} Conference Call Bingo"
    end
    class List < ActiveRecord::Base
    end
    get '/' do
      @card = Sinapp::Card.new
      @list = List.order("created_at DESC")
      haml :index
    end

    run! if app_file == $0
  end
end