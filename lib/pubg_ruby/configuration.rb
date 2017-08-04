module PubgRuby
  class Configuration
    attr_writer :api_key

    def api_key
      raise '`api_key` must be set' unless @api_key
      @api_key
    end
  end
end
