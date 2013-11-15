module DocumentCloud
  module API
    module Utils
      
      def parse_json(json)
        MultiJson.load(json, symbolize_keys: true)
      end
      
      def build_object(object, json)
        parsed = parse_json json
        parsed = parsed[:document] if parsed[:document]
        parsed = parsed[:projects] if parsed[:projects]
        object.new(parsed)
      end
      
      def build_objects(object, json)
        parsed = parse_json json
        parsed = parsed[:document] if parsed[:document]
        parsed = parsed[:projects] if parsed[:projects]
        return parsed.map{|o| object.new(o) }
      end
      
    end
  end
end