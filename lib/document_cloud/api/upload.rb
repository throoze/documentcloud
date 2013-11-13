module DocumentCloud
  module API
    module Upload
      include DocumentCloud::API::Utils
      UPLOAD_PATH = '/upload.json'
      
      # Upload a document
      #
      # @see http://www.documentcloud.org/help/api
      # @param file  [String|File] Local file to upload, or remote url of file
      # @param title [String] The document's canonical title
      # @param options [Hash] Customizable set of options
      # @param options [String]  :source          The source who produced the document
      # @param options [String]  :description     A paragraph of detailed description
      # @param options [String]  :related_article The URL of the article associated with the document
      # @param options [String]  :published_url   The URL of the page on which the document will be embedded
      # @param options [String]  :access          One of 'public', 'private', 'organization', defaults to 'private'
      # @param options [Integer] :project         A numeric Project id, to upload the document into an existing project. 
      # @param options [Hash]    :data            A hash of arbitrary key/value data pairs
      # @param options [Boolean] :secure          If you're dealing with a truly sensitive document, pass the "secure" parameter in order to prevent the document from being sent to OpenCalais for entity extraction. 
      # @returns [DocumentCloud::Document] The document uploaded
      def upload(file, title, options={})
        build_object DocumentCloud::Document, post(UPLOAD_PATH, options.merge(file: file, title: title))
      end
      
    end
  end
end