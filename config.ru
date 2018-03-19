require 'rubygems'
require 'bundler'
require 'require_all'
require 'yaml'

load_all 'data'  # Fake Data Base
load_all 'model' # DB Class Conversor
load_all 'lib'   # Metaprogramming lib utils

Bundler.require
require './app'
run App.new
