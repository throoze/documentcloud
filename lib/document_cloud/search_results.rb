module DocumentCloud
  class SearchResults
    attr_reader :total, :page, :per_page, :query
    
    def initialize(attrs)
      @total    = attrs[:total]
      @page     = attrs[:page]
      @per_page = attrs[:per_page]
      @query    = attrs[:q]
      
      @documents = attrs[:documents].map {|d| DocumentCloud::Document.new(d) }
    end
    
    def documents
      @documents
    end
    
  end
end