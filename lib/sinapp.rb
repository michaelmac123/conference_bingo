require 'sinatra/base'
require 'haml'
require 'compass'
require 'sinatra/assetpack'
require 'sinatra/config_file'
require 'sinatra/activerecord'
require 'zurb-foundation'


module Sinapp

  autoload :App,   'lib/bingo/app'
  autoload :Card,  'lib/bingo/card'
  load 'lib/environment.rb'

  def self.root
    File.expand_path(File.dirname(File.dirname(__FILE__)))
  end

end