# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Test Cycles
      module TestCycles
        def create_testcycle(body)
          post '/testcycles', body
        end

        def get_testcycle(testcycle_id)
          get "/testcycles/#{testcycle_id}"
        end

        def update_testcycle(testcycle_id, params = {})
          put "/testcycles/#{testcycle_id}", params
        end

        def list_testcycles(params = {})
          get '/testcycles', params
        end

        def get_testcycle_links(testcycle_id)
          get "/testcycles/#{testcycle_id}/links"
        end

        def create_testcycle_issue_link(testcycle_id, body)
          post "/testcycles/#{testcycle_id}/links/issues", body
        end

        def create_testcycle_web_link(testcycle_id, body)
          post "/testcycles/#{testcycle_id}/links/weblinks", body
        end
      end
    end
  end
end
