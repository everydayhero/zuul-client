module Zuul
  module Client
    UnprocessableEntity = Class.new(StandardError)
    LayerConflict = Class.new(StandardError)
  end
end
