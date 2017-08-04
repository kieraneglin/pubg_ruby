require 'http'

module PubgRuby
  class Profile
    def self.from_nickname(nickname)
      stats = HTTP.headers('TRN-Api-Key' => PubgRuby.configuration.api_key)
        .get("https://pubgtracker.com/api/profile/pc/#{nickname}")

      begin
        JSON.parse(stats)
      rescue
        raise ApiError, 'PUBGTracker API responded unexpectedly.  Please try again'
      end
    end

    def self.from_steam(steam_id)
      stats = HTTP.headers('TRN-Api-Key' => PubgRuby.configuration.api_key)
        .get("https://pubgtracker.com/api/search?steamId=#{steam_id}")

      begin
        from_nickname JSON.parse(stats)['Nickname']
      rescue
        raise PlayerNotFoundError, 'Player not found'
      end
    end
  end
end
