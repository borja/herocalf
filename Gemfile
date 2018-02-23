ruby '2.5.0'
source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 1.5.0'
gem 'sinatra', github: 'sinatra/sinatra'
gem 'slim', '~> 3.0.9'
gem 'tilt', '~> 2.0.7'

# Testing and metrics (not necessary in production)
group :test do
  gem 'codecov',   '~> 0.1.10', require: false
  gem 'coveralls', '~> 0.8.21', require: false
  gem 'minitest',  '~> 5.11.1'
  gem 'rack-test', '~> 0.8.2'
  gem 'rake',      '~> 12.3.0'
  gem 'rspec',     '~> 3.7.0'
  gem 'simplecov', require: false
  gem 'yaml-lint', '~> 0.0.9'
end
