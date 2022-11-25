# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Test Cases
      module TestCases
        def create_testcase(body)
          post '/testcases', body
        end

        def list_testcases(params = {})
          get '/testcases', params
        end

        def get_testcase(testcase_key)
          get "/testcases/#{testcase_key}"
        end

        def update_testcase(testcase_key, params = {})
          put "/testcases/#{testcase_key}", params
        end

        def get_testcase_links(testcase_key)
          get "/testcases/#{testcase_key}/links"
        end

        def create_testcase_issue_link(testcase_key, body)
          post "/testcases/#{testcase_key}/links/issues", body
        end

        def create_testcase_web_link(testcase_key, body)
          post "/testcases/#{testcase_key}/links/weblinks", body
        end

        def list_testcase_versions(testcase_key, params = {})
          get "/testcases/#{testcase_key}/versions", params
        end

        def get_testcase_version(testcase_key)
          get "/testcases/#{testcase_key}/version"
        end

        def get_testcase_testscript(testcase_key)
          get "/testcases/#{testcase_key}/testscript"
        end

        def create_testcase_testscript(testcase_key, body)
          post "/testcases/#{testcase_key}/testscript", body
        end

        def get_testcase_teststeps(testcase_key, params = {})
          get "/testcases/#{testcase_key}/teststeps", params
        end

        def create_testcase_teststeps(testcase_key, body)
          post "/testcases/#{testcase_key}/teststeps", body
        end
      end
    end
  end
end
