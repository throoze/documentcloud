require_relative 'configurable'
require_relative 'api/utils'
require_relative 'api/search'
require_relative 'api/upload'

module DocumentCloud
  class Client
    include DocumentCloud::API::Utils
    include DocumentCloud::API::Search
    include DocumentCloud::API::Upload
    include DocumentCloud::Configurable
    
    def initialize(options={})
      DocumentCloud::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || DocumentCloud.instance_variable_get(:"@#{key}"))
      end
    end
    
    # Perform HTTP GET request
    def get(path, params={})
      RestClient.get request_base+path, {params: params}
    end
    
    def post(path, params={})
      RestClient.post request_base+path, params
    end
    
    private
    
      def request_base
        "#{DocumentCloud::Default.http_mode}://#{@email}:#{@password}@#{DocumentCloud::Default.endpoint}"
      end
    
  end
end