require 'sinatra'
require 'twitter'
require 'sass/plugin/rack'
require './config'
require './app'

use Sass::Plugin::Rack

run Sinatra::Application
