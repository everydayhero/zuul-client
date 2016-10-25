require "zuul/client/version"
require "zuul/client/connection"
require "zuul/client/errors"
require "excon"

module Zuul
  module Client
    def self.create_layer(layer_id, version, layer)
      Connection.new.put(
        path: "/peter/api/v1/layers/#{layer_id}/#{version}",
        body: layer,
      )
    end
  end
end
