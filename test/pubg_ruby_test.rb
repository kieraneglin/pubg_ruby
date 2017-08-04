require 'test_helper'
require 'awesome_print'

class PubgRubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PubgRuby::VERSION
  end

  def test_that_api_key_is_settable
    PubgRuby.configure do |config|
      config.api_key = 'key'
    end

    assert_equal PubgRuby.configuration.api_key, 'key'
  end

  def test_that_setting_api_key_throws_nothing
    PubgRuby.configure do |config|
      config.api_key = ENV['API_KEY']
    end

    PubgRuby::Profile.from_nickname ENV['TEST_NAME']
  end

  def test_that_not_setting_api_key_throws_something
    PubgRuby.configure do |config|
      config.api_key = nil
    end

    assert_raises ArgumentError do
      PubgRuby::Profile.from_nickname ENV['TEST_NAME']
    end
  end
end
