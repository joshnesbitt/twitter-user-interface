require 'sinatra'
require 'sass/plugin/rack'
require './config'
require './app'

use Sass::Plugin::Rack

run Sinatra::Application
