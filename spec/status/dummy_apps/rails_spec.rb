require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'

require 'rails'
require File.expand_path('../../../dummy_apps/rails_app/config/environment.rb',  __FILE__)
require 'rspec/rails'

describe 'RailsApp', :type => :request do
  it "shows /status" do
    get '/status'

    response.body.should == '{"status": "OK"}'
  end
end