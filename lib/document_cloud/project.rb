module DocumentCloud
  class Project
    attr_reader :id, :title, :description
    
    def initialize(attrs={})
      @id               = attrs[:id]
      @title            = attrs[:title]
      @description      = attrs[:description]
      @document_ids     = attrs[:document_ids]
    end
    
    def documents
      @documents ||= @document_ids.map {|id| DocumentCloud.document(id) }
      @documents
    end
    
  end
end