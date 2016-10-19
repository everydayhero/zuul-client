module Zuul
  class Connection
    def initialize
      headers = {}
      headers['Authorization'] = "Token token=#{auth_token}" if auth_token
      headers['Content-type'] = "application/json"

      @connection = Excon.new(ENV['ZUUL_API_URL'], headers: headers)
    end

    def post(options)
      options = options.merge(
        expects: 201
      )
      @connection.post(options)
    end

    def put(options)
      options = options.merge(
        expects: 201
      )
      @connection.put(options)
    end

    private

    def auth_token
      ENV['ZUUL_AUTHORIZATION_TOKEN']
    end
  end
end
