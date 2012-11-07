#!/usr/bin/env ruby
require 'open-uri'
require 'json'
require 'cosm-rb'

# Fetch Data from WattVision
WATTVISION_BASE_URL = "http://www.wattvision.com/api/download/latest?"

wattvision_api_key = ENV['WATTVISION_API_KEY']
wattvision_house_id = ENV['WATTVISION_HOUSE_ID']

wattvisionURL = "#{WATTVISION_BASE_URL}h=#{wattvision_house_id}&k=#{wattvision_api_key}&v=0.1"

# returns a JSON array with 3 items [ unix time, watts, cents ]
# Cents is "cost in cents per hour"
wattvisionData = JSON.parse(open(wattvisionURL).read)

# Update our Cosm datastreams
cosm_api_key = ENV['COSM_API_KEY']

# Update our watts datastream
watts = Cosm::Datastream.new(:id => 'watts', :current_value => wattvisionData[1])

Cosm::Client.put('/v2/feeds/75525/datastreams/watts', :headers => {"X-ApiKey" => cosm_api_key}, :body => watts.to_json)

# Update our cost datastram
cost = Cosm::Datastream.new(:id => 'cost', :current_value => (wattvisionData[2]/100.0))

Cosm::Client.put('/v2/feeds/75525/datastreams/cost', :headers => {"X-ApiKey" => cosm_api_key}, :body => cost.to_json)
