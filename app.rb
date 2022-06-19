require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader"
require "sinatra/namespace"
require "mongoid"

Mongoid.load! "mongoid.config"

class Tweet 
    include Mongoid::Document 
    include Mongoid::Timestamps

    field :author, type: String, default: "Anon"
    field :content, type: String
    field :image, type: String
    field :tags, type: Array, default: []
    field :likes, type: Integer, default: 0
end


get "/api/v1/tweets" do
 Tweet.all.to_json
end
post "/api/v1/tweets" do
   new_tweet = Tweet.new(JSON.parse(request.body.read)).save
end