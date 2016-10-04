require_relative 'environment'
require 'sinatra'
require_relative 'models/soda'
require 'json'
require 'active_record'

get '/' do
  'hi mom'
end

get '/api/sodas' do
  Soda.all.to_json
end

get '/api/sodas/:name' do
  Soda.find(params[:name])
end

post '/api/sodas' do
  Soda.create(name: params[:name].capitalize, sugar_content: params[:sugar_content]).to_json
end

# post '/api/sodas' do
#   update_column(sugar_content, params[:sugar_content])
# end

#refernce a task, input something

# hello?foobar=Bryce&name=Dr%20Bryce&something=foo&another_thing=bar
