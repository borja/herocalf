ruby '3.0.2' # Release date: 2019-12-25
# https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/
source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 3.0.0'
gem 'sinatra', '~> 2.0.8'
gem 'slim', '~> 4.0.1'
gem 'tilt', '~> 2.0.9'

# Testing and metrics (not necessary in production)
group :test do
  gem 'codecov',   '~> 0.6.0',  require: false
  gem 'coveralls', '~> 0.8.23', require: false
  gem 'minitest',  '~> 5.14.0'
  gem 'rack-test', '~> 1.1.0'
  gem 'rake',      '~> 13.0.6'
  gem 'rspec',     '~> 3.9.0'
  gem 'simplecov', '~> 0.16.1', require: false

  # YAML files in data/* syntax validator
  gem 'yaml-lint', '~> 0.0.10'
end

gem "webrick", "~> 1.7"
