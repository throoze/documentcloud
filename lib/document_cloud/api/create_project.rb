module DocumentCloud
  module API
    module CreateProject
      include DocumentCloud::API::Utils
      PROJECTS_PATH = "/projects.json"

      # Create new project
      #
      # @see http://www.documentcloud.org/help/api
      # @param title [String] The document's canonical title
      # @param options [Hash] Customizable set of options
      # @param options [String] :description  A paragraph of detailed description
      # @param options [Array]  :document_ids A list of documents that the project contains, by id
      # @returns [DocumentCloud::Project] The project created
      def create_project(title, options={})
        build_object DocumentCloud::Project, post(PROJECTS_PATH, options.merge(title: title))
      end
      
    end
  end
end