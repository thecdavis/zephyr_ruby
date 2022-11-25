# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to API Health
      module HealthCheck
        def healthcheck_status
          get '/healthcheck'
        end
      end
    end
  end
end
