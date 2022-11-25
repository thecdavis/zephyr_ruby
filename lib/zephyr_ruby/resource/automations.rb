# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Automations
      module Automations
        def create_automation_custom(body)
          post '/automations/executions/custom', body
        end

        def create_automation_cucumber(body)
          post '/automations/executions/cucumber', body
        end

        def create_automation_junit(body)
          post '/automations/executions/junit', body
        end

        def get_zip_file(params = {})
          get '/automations/testcases', params
        end
      end
    end
  end
end
