# frozen_string_literal: true

module ZephyrRuby
  # Connection provides the base functionality for interacting with APIs using
  # get, post, put, and delete operations.
  module Connection
    def get(path, params = {})
      request :get, path, params
    end

    def post(path, body, file_path = nil)
      if file_path
        mime_type = case File.extname(file_path).downcase
                    when '.json' then 'application/json'
                    when '.xml'  then 'application/xml'
                    when '.zip'  then 'application/zip'
                    else 'application/octet-stream'
                    end

        file = Faraday::UploadIO.new(file_path, mime_type)
        body = { file: file }.merge(body) if body.is_a?(Hash)
      elsif body.is_a?(Hash)
        body = body.to_json
      end

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
