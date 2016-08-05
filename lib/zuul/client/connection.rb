module Zuul
  class Connection
    def initialize
      headers = {}
      headers['Authorization'] = "Token token=#{auth_token}" if auth_token

      @connection = Excon.new(ENV['ZUUL_API_URL'], headers: headers)
    end

    def post(options)
      @connection.post(options)
    end

    private

    def auth_token
      ENV['ZUUL_AUTHORIZATION_TOKEN']
    end
  end
end
