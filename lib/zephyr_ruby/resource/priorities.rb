# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Priorities
      module Priorities
        def list_priorities(params = {})
          get '/priorities', params
        end

        def create_priority(body)
          post '/priorities', body
        end

        def get_priority(priority_id)
          get "/priorities/#{priority_id}"
        end

        def update_priority(priority_id, params = {})
          put "/priorities/#{priority_id}", params
        end
      end
    end
  end
end
