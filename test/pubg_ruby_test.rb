require 'test_helper'
require 'awesome_print'

class PubgRubyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PubgRuby::VERSION
  end

  def test_it_does_something_useful
    PubgRuby.configure do |config|
      config.api_key = ENV["API_KEY"]
    end

    ap PubgRuby::Profile.nickname "Paynerman"
  end
end
