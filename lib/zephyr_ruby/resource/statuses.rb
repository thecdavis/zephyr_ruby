# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Statuses
      module Statuses
        def list_statuses(params = {})
          get '/statuses', params
        end

        def create_status(body)
          post '/statuses', body
        end

        def get_status(status_id)
          get "/statuses/#{status_id}"
        end

        def update_status(status_id, params = {})
          put "/statuses/#{status_id}", params
        end
      end
    end
  end
end
