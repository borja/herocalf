ruby '2.5.1' # Release date: 2018-03-28
source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 2.0.0'
gem 'sinatra', github: 'sinatra/sinatra'
gem 'slim', '~> 4.0.1'
gem 'tilt', '~> 2.0.7'

# Testing and metrics (not necessary in production)
group :test do
  gem 'codecov',   '~> 0.1.10', require: false
  gem 'minitest',  '~> 5.11.1'
  gem 'rack-test', '~> 1.0.0'
  gem 'rake',      '~> 12.3.1'
  gem 'rspec',     '~> 3.8.0'
  gem 'simplecov', '~> 0.16.1', require: false

  # YAML files in data/* syntax validator
  gem 'yaml-lint', '~> 0.0.10'
end
