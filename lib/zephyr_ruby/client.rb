# frozen_string_literal: true

require_relative 'resource/automations'
require_relative 'resource/environments'
require_relative 'resource/folders'
require_relative 'resource/healthcheck'
require_relative 'resource/issue_links'
require_relative 'resource/links'
require_relative 'resource/priorities'
require_relative 'resource/projects'
require_relative 'resource/statuses'
require_relative 'resource/test_cases'
require_relative 'resource/test_cycles'
require_relative 'resource/test_executions'
require_relative 'resource/test_plans'
require_relative 'connection'

require 'faraday'
require 'faraday/multipart'
require 'json'

module ZephyrRuby
  # Client provides methods for interacting with all zephyr scale endpoints
  class Client
    include ZephyrRuby::Client::Resource::Automations
    include ZephyrRuby::Client::Resource::Environments
    include ZephyrRuby::Client::Resource::Folders
    include ZephyrRuby::Client::Resource::HealthCheck
    include ZephyrRuby::Client::Resource::IssueLinks
    include ZephyrRuby::Client::Resource::Links
    include ZephyrRuby::Client::Resource::Priorities
    include ZephyrRuby::Client::Resource::Projects
    include ZephyrRuby::Client::Resource::Statuses
    include ZephyrRuby::Client::Resource::TestCases
    include ZephyrRuby::Client::Resource::TestCycles
    include ZephyrRuby::Client::Resource::TestExecutions
    include ZephyrRuby::Client::Resource::TestPlans
    include ZephyrRuby::Connection

    def initialize(api_token)
      @base_url = 'https://api.zephyrscale.smartbear.com/v2'
      @api_token = api_token
      @client = Faraday.new(@base_url) do |f|
        f.request :multipart
        f.request :url_encoded
        f.adapter Faraday.default_adapter
      end
      @headers = {
        'Authorization' => "Bearer #{@api_token}",
        'Content-Type' => 'application/json'
      }
    end

    attr_reader :base_url

    def request(method, path, params, headers = @headers)
      path = URI.parse("#{@base_url}#{path}").normalize.to_s
      @client.send(method, path, params, headers)
    end

    def build_middleware
      Faraday::RackBuilder.new do |builder|
        builder.response :json
      end
    end
  end
end
