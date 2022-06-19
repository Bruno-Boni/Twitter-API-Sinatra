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
    field :author, type: String
end


get ("/api/v1/tweets") { "Hello World"}