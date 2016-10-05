require_relative 'environment'
require 'sinatra'
require_relative 'models/soda'
require 'json'
require 'active_record'

get '/' do
  File.read(File.join('public', 'index.html'))
end

# playing with sorting.
# get '/api/sodas' do
#   name = params['name']
#   sugar_content = params['sugar_content']
#     if !name.nil? && !role.nil?
#       sodas = Soda.where(name: name, sugar_content: sugar_content)
#     elsif !name.nil?
#       sodas = Soda.search(params[:name]).order("created_at DESC")
#     elsif !role.nil?
#       sodas = Soda.where(sugar_content: sugar_content)
#     else
#       sodas = Soda.all.order('created_at DESC')
#     end
#   sodas.to_json
# end
# @sodas = Soda.all
# if params[:name]
#   @sodas = Soda.search(params[:name]).order("created_at DESC")
# else
#   @sodas = Soda.all.order('created_at DESC')
# end

get '/api/sodas' do
  # p File.read(File.join('public', '../public/api/sodas.html')) #playing with html
  Soda.all.to_json
end

get '/api/sodas/:name' do
  Soda.find_by(name: params[:name]).to_json
end

post '/api/sodas' do
  Soda.create(name: params[:name].capitalize, sugar_content: params[:sugar_content]).to_json
end

put '/api/sodas/:name' do
  soda = Soda.find_by(name: params[:name])
  soda.update(sugar_content: params[:sugar_content]).to_json
end

delete '/api/sodas/:name' do
  soda = Soda.find_by(name: params[:name])
  soda.destroy
end

#refernce a task, input something

# hello?foobar=Bryce&name=Dr%20Bryce&something=foo&another_thing=bar
