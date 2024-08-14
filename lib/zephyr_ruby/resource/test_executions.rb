# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Test Executions
      module TestExecutions
        def create_test_execution(body)
          post '/testexecutions', body
        end

        def list_test_executions(params = {})
          get '/testexecutions', params
        end

        def get_test_execution(test_execution_id, params = {})
          get "/testexecutions/#{test_execution_id}", params
        end

        def get_test_execution_links(test_execution_id)
          get "/testexecutions/#{test_execution_id}/links"
        end

        def create_test_execution_link(test_execution_id, body)
          post "/testexecutions/#{test_execution_id}/links/issues", body
        end

        def update_test_execution(test_execution_id, body)
          put "/testexecutions/#{test_execution_id}", body
        end

        def get_test_steps(test_execution_id)
          get "/testexecutions/#{test_execution_id}/teststeps"
        end

        def update_test_steps(test_execution_id, body)
          put "/testexecutions/#{test_execution_id}/teststeps", body
        end

        def sync_test_execution(test_execution_id)
          post "/testexecutions/#{test_execution_id}/teststeps/sync"
        end

        def create_test_execution_issue_link(test_execution_id, body)
          post "/testexecutions/#{test_execution_id}/links/issues", body
        end
      end
    end
  end
end
