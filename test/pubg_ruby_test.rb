require 'test_helper'
require 'awesome_print'

class PubgRubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PubgRuby::VERSION
  end

  def test_it_does_something_useful
    PubgRuby.configure do |config|
      config.api_key = 10
    end

    puts PubgRuby.configuration.api_key
    # ap PubgRuby::Profile.nickname
  end
end
