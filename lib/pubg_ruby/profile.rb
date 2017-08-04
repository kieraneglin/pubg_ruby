require "http"

module PubgRuby
  class Profile
    def self.nickname
      stats = HTTP.headers("TRN-Api-Key": "")
        .get("https://pubgtracker.com/api/profile/pc/Paynerman")

      JSON.parse(stats)
    end
  end
end
