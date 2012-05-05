source 'https://rubygems.org'

gem 'rails', '~> 3.2.3'
gem 'sqlite3'
gem 'unicorn'
# gem 'bcrypt-ruby', '~> 3.0.0' # needed for 'has_secure_password
# gem 'capistrano' # Deploy with Capistrano

gem 'jquery-rails'
gem 'haml-rails'
gem 'simple_form'

gem 'pg'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 2.0.2'
end

group :staging, :production do
  gem 'therubyracer'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'debugger' # Since the default debugger doesn't work well with Ruby 1.9.3
  if RUBY_PLATFORM =~ /darwin/ # Macs only
    gem 'rb-fsevent', :require => false
    gem 'growl'
  end
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'guard-spork', :require => false
  gem 'spork', '~> 1.0rc'
  gem "mocha"
end
