ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'minitest/reporters'
require 'valid_attribute'

MiniTest::Reporters.use! MiniTest::Reporters::ProgressReporter.new

class ActiveSupport::TestCase
  fixtures :all
end

DatabaseCleaner.strategy = :deletion
Capybara.current_driver  = :poltergeist

class IntegrationTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/^Integration/, self)

  before do
    DatabaseCleaner.clean
    Capybara.reset_session!
    Capybara.use_default_driver
  end
end

class MiniTest::Spec
  class << self
    alias :context :describe
  end
end
