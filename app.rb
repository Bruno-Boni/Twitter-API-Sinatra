require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader"
require "sinatra/namespace"

Mongoid.load! "mongoid.config"

class Tweet 
    include Mongoid::Document 
    include Mongoid::Timestamps

    field :author, type: string, default: "Anon"
    field :content, type: string
    field :image, type: string
    field :tags, type: string, default: []
    field :likes, type: integer, default: 0
    field :author, type: string
end



get ("/api/v1/tweets") { "Hello World"}