require "pubg_ruby/version"
require "pubg_ruby/profile"
require "pubg_ruby/configuration"

module PubgRuby
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
