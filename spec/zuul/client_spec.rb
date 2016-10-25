require 'spec_helper'

describe Zuul::Client do
  it 'has a version number' do
    expect(Zuul::Client::VERSION).not_to be nil
  end

  describe '#create_layer', :vcr do
    it 'posts to zuul' do
      version = 1
      layer = '{}'
      layer_id = 'aba60788-8433-4aa6-853f-bc4b52db383e'
      Zuul::Client.create_layer(layer_id, version, layer)
    end

    it 'raises when zuul returns 422' do
      version = 1
      layer = '{"complete": true}'
      layer_id = '18317405-c52f-4e45-8785-f34bd7bd7948'
      expect { Zuul::Client.create_layer(layer_id, version, layer) }
        .to raise_error(
          Zuul::Client::UnprocessableEntity,
          /The property '#\/' did not contain a required property of 'gift'/
          )
    end
  end
end
