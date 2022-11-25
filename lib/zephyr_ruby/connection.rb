# frozen_string_literal: true

module ZephyrRuby
  # Connection provides the base functionality for interacting with APIs using
  # get, post, put, and delete operations.
  module Connection
    def get(path, params = {})
      request :get, path, params
    end

    def post(path, body)
      body = body.to_json if body.is_a?(Hash)
      request :post, path, body
    end

    def put(path, body)
      body = body.to_json if body.is_a?(Hash)
      request :put, path, body
    end

    def delete(path, params = {})
      request :delete, path, params
    end
  end
end
