require_relative 'configurable'

module DocumentCloud
  class Client
    include DocumentCloud::Configurable
    
    def initialize(options={})
      DocumentCloud::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || DocumentCloud.instance_variable_get(:"@#{key}"))
      end
    end
    
    def test
      p @email
      p @password
    end
    
  end
end