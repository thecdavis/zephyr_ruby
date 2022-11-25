# frozen_string_literal: true

module ZephyrRuby
  class Client
    module Resource
      # Operations related to Links
      module Links
        def delete_link(link_id)
          delete "/links/#{link_id}"
        end
      end
    end
  end
end
