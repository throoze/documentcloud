module DocumentCloud
  module API
    module Utils
      
      def parse_json(json)
        MultiJson.load(json, symbolize_keys: true)
      end
      
    end
  end
end