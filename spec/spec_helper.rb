$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'zuul/client'
require 'dotenv'
require 'vcr'

Dotenv.load '.env.test'

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :excon
  config.configure_rspec_metadata!
end
