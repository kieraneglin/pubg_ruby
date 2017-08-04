require "http"

module PubgRuby
  class Profile
    def self.nickname(nickname)
      stats = HTTP.headers("TRN-Api-Key": PubgRuby.configuration.api_key)
        .get("https://pubgtracker.com/api/profile/pc/#{nickname}")

      JSON.parse(stats)
    end
  end
end
