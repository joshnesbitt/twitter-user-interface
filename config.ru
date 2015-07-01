require 'sinatra'
require 'twitter'
require 'twitter-text'
require 'sass/plugin/rack'
require './config'
require './app'
require './twitter_client'
require './helpers'

use Sass::Plugin::Rack

run Sinatra::Application
