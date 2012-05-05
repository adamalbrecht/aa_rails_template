require 'rubygems'
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'capybara/rspec'
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods
    config.use_transactional_fixtures = false
    config.mock_with :rspec
    config.include(MailerMacros)
    config.include(RequestSpecHelpers)
    config.include Rails.application.routes.url_helpers
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.filter_run focus: true
    config.filter_run_excluding skip: true
    config.run_all_when_everything_filtered = true
    Capybara.server_boot_timeout = 50

    config.before(:suite) do
      DatabaseCleaner.strategy = :truncation
    end
    config.before(:each) do
      DatabaseCleaner.start
      reset_email
    end
    config.after(:each) do
      DatabaseCleaner.clean
    end

  end
end

Spork.each_run do
  # This code will be run each time you run your specs
  FactoryGirl.reload
end

