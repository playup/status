require 'status'
require 'rubygems'
require 'rack'

Dir[File.join(File.dirname(__FILE__), 'support', '**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.color_enabled = true
end