module DocumentCloud
  module API
    module Search
      include DocumentCloud::API::Utils
      SEARCH_PATH = '/search.json'
      
      # Search catalog of public documents
      #
      # @see http://www.documentcloud.org/help/api
      # @param q [String] The search query
      # @param options [Hash] Customizable set of options
      # @param options [Integer] :page        Response page number
      # @param options [Integer] :per_page    The number of documents to return per page
      # @param options [Boolean] :sections    Include document sections in the results
      # @param options [Boolean] :annotations Include document annotations in the results
      # @param options [Boolean] :data        Include key/value data in the results
      # @param options [Integer] :mentions    Include highlighted mentions of the search phrase
      # @returns [DocumentCloud::SearchResults] Results of the search
      def search(q, options={})
        build_object DocumentCloud::SearchResults, get(SEARCH_PATH, options.merge(:q => q))
      end
      
    end
  end
end