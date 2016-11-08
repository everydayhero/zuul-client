module Zuul
  module Client
    class Connection
      def initialize
        headers = {}
        headers['Authorization'] = "Token token=#{auth_token}" if auth_token
        headers['Content-type'] = "application/json"

        @connection = Excon.new(ENV['ZUUL_API_URL'], headers: headers)
      end

      def put(options)
        options = options.merge(
          expects: 201
        )
        @connection.put(options)
      rescue Excon::Errors::UnprocessableEntity => e
        raise UnprocessableEntity, e.response.body
      rescue Excon::Errors::Conflict => e
        raise LayerConflict, e.response.body
      end

      private

      def auth_token
        ENV['ZUUL_AUTHORIZATION_TOKEN']
      end
    end
  end
end
