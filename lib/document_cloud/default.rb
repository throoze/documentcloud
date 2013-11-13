module DocumentCloud
  module Default
    
    ENDPOINT  = 'www.documentcloud.org/api' unless defined? DocumentCloud::Default::ENDPOINT
    HTTP_MODE = 'https'                     unless defined? DocumentCloud::Default::HTTP_mode
    
    class << self
      
      def endpoint
        ENDPOINT
      end
      
      def http_mode
        HTTP_MODE
      end
      
    end
    
  end
end