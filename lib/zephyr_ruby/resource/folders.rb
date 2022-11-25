# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Folders
      module Folders
        def create_folder(body)
          post '/folders', body
        end

        def get_folder(folder_id)
          get "/folders/#{folder_id}"
        end

        def list_folders(params = {})
          get '/folders', params
        end
      end
    end
  end
end
