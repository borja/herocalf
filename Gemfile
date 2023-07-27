ruby '3.2.2' # Release date: 2023-03-30
# https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-2-2-released

source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 3.0.0'
gem 'sinatra', '~> 3.0.5'
gem 'slim', '~> 4.1.0'
gem 'tilt', '~> 2.0.10'

# Testing and metrics (not necessary in production)
group :test do
  gem 'codecov',   '~> 0.6.0',  require: false
  gem 'minitest',  '~> 5.19.0'
  gem 'rack-test', '~> 2.0.2'
  gem 'rake',      '~> 13.0.6'
  gem 'rspec',     '~> 3.12.0'
  gem 'simplecov', '~> 0.21.2'

  # YAML files in data/* syntax validator
  gem 'yaml-lint', '~> 0.0.10'
end

gem "webrick", "~> 1.7"
