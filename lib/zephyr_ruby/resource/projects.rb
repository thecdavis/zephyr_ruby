# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Projects
      module Projects
        def list_projects(params = {})
          get '/projects', params
        end

        def get_project(project_id)
          get "/projects/#{project_id}"
        end
      end
    end
  end
end
