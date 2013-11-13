module DocumentCloud
  module API
    module Utils
      
      def parse_json(json)
        MultiJson.load(json, symbolize_keys: true)
      end
      
      def build_object(object, json)
        parsed = parse_json json
        parsed = parsed[:document] if parsed[:document]
        object.new(parsed)
      end
      
    end
  end
end