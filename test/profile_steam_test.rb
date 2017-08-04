require 'test_helper'
require 'awesome_print'

class ProfileSteamTest < Minitest::Test
  def setup
    PubgRuby.configure do |config|
      config.api_key = ENV['API_KEY']
    end
  end

  def test_successful_request
    api_nickname = PubgRuby::Profile.from_steam(ENV['TEST_STEAM_ID'])['PlayerName']

    assert_equal api_nickname, ENV['TEST_NAME']
  end

  def test_invalid_steam_id
    assert_raises PlayerNotFoundError do
      PubgRuby::Profile.from_steam 'invalid'
    end
  end
end
