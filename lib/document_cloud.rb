require_relative 'document_cloud/configurable'
require_relative 'document_cloud/client'

module DocumentCloud
  class << self
    include DocumentCloud::Configurable
    
    def client
      @client = DocumentCloud::Client.new(credentials) unless defined?(@client)
      @client
    end
    
    def respond_to?(method_name, include_private=false)
      client.respond_to?(method_name, include_private) || super
    end
    
    private

      def method_missing(method_name, *args, &block)
        return super unless client.respond_to?(method_name)
        client.send(method_name, *args, &block)
      end
    
  end
end