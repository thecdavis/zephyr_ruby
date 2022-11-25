# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Environments
      module Environments
        def list_environments(params = {})
          get '/environments', params
        end

        def get_environment(environment_id)
          get "/environments/#{environment_id}"
        end
      end
    end
  end
end
