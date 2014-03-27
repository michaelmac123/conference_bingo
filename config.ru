$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))
ENV['RACK_ENV'] ||= 'production'

require 'lib/sinapp'

run Sinapp::App

