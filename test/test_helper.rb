ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'minitest/matchers'
require 'minitest/reporters'
require 'valid_attribute'

MiniTest::Reporters.use! MiniTest::Reporters::ProgressReporter.new

class ActiveSupport::TestCase
  fixtures :all

  class << self
    alias :context :describe
  end
end

class IntegrationTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/^Integration/, self)
end
