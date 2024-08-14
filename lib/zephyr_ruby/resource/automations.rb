# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Automations
      module Automations
        def create_automation_custom(body, file_path = nil)
          post '/automations/executions/custom', body, file_path
        end

        def create_automation_cucumber(body, file_path = nil)
          post '/automations/executions/cucumber', body, file_path
        end

        def create_automation_junit(body, file_path = nil)
          post '/automations/executions/junit', body, file_path
        end

        def get_zip_file(params = {})
          get '/automations/testcases', params
        end
      end
    end
  end
end
