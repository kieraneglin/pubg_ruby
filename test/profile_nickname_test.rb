require 'test_helper'
require 'awesome_print'

class ProfileNicknameTest < Minitest::Test
  def setup
    PubgRuby.configure do |config|
      config.api_key = ENV['API_KEY']
    end
  end

  def test_successful_request
    api_nickname = PubgRuby::Profile.from_nickname(ENV['TEST_NAME'])['PlayerName']

    assert_equal api_nickname, ENV['TEST_NAME']
  end
end
