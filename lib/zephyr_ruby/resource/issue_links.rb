# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Issue Links
      module IssueLinks
        def get_issuelinks_testplans(issue_key)
          get "/issuelinks/#{issue_key}/testplans"
        end

        def get_issuelinks_testcases(issue_key)
          get "/issuelinks/#{issue_key}/testcases"
        end
      end
    end
  end
end
