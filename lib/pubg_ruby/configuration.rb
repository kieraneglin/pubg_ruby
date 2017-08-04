module PubgRuby
  class Configuration
    attr_writer :api_key

    def api_key
      @api_key ? @api_key : raise(ConfigurationError, '`api_key` must be set')
    end
  end
end
