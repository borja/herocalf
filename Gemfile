ruby '3.1.2' # Release date: 2022-04-12
# https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released/
source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 3.0.0'
gem 'sinatra', '~> 2.2.0'
gem 'slim', '~> 4.1.0'
gem 'tilt', '~> 2.0.9'

# Testing and metrics (not necessary in production)
group :test do
  gem 'codecov',   '~> 0.6.0',  require: false
  gem 'minitest',  '~> 5.16.0'
  gem 'rack-test', '~> 1.1.0'
  gem 'rake',      '~> 13.0.6'
  gem 'rspec',     '~> 3.11.0'
  gem 'simplecov', '~> 0.21.2'

  # YAML files in data/* syntax validator
  gem 'yaml-lint', '~> 0.0.10'
end

gem "webrick", "~> 1.7"
