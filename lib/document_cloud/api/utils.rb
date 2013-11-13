module DocumentCloud
  module API
    module Utils
      
      def parse_json(json)
        MultiJson.load(json, symbolize_keys: true)
      end
      
      def build_object(object, json)
        object.new(parse_json json)
      end
      
    end
  end
end