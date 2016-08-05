require "zuul/client/version"
require "zuul/client/connection"
require "excon"

module Zuul
  module Client
    def self.create_blueprint(token, blueprint)
      Connection.new.post(
        path: "/peter/api/v1/blueprints/#{token}",
        body: blueprint,
      )
    end
  end
end
