# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Test Plans
      module TestPlans
        def create_testplan(body)
          post '/testplans', body
        end

        def get_testplan(testplan_id)
          get "/testplans/#{testplan_id}"
        end

        def list_testplans(params = {})
          get '/testplans', params
        end

        def create_testplan_weblink(testplan_id, body)
          post "/testplans/#{testplan_id}/links/weblinks", body
        end

        def create_testplan_issuelink(testplan_id, body)
          post "/testplans/#{testplan_id}/links/issuelink", body
        end

        def create_testplan_testcycle_link(testplan_id, body)
          post "/testplans/#{testplan_id}/links/testcycles", body
        end
      end
    end
  end
end
