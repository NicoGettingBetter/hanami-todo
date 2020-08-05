# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require_relative 'support/initializers/database_cleaner.rb'
Hanami.boot
Hanami::Utils.require!("#{__dir__}/support")

RSpec.configure do |config|
  config.include RSpec::Hanami::Matchers

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
