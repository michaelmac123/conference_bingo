source 'http://rubygems.org'
ruby "2.2.4"

# System
gem 'sinatra'
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'
gem 'sinatra-contrib', require: %w(sinatra/config_file)
gem 'sinatra-assetpack'
gem "activerecord"
gem "rack",         '~> 1.4.5'
gem 'yajl-ruby',    '~> 1.1.0'

# Server
gem 'foreman'
gem "thin",         '~> 1.3.1'

# Templates
gem 'haml'
gem 'sass'
gem 'compass'
gem 'zurb-foundation'

# Testing
gem 'newrelic_rpm', '~> 3.5.3'

group :development do
 gem 'sqlite3'
 gem "tux"
end

group :production do
 gem 'pg'
end