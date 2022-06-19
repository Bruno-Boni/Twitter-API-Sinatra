require "sinatra/reloader"
require "sinatra/namespace"

namespace "/api/v1" do 
    get "/tweets" do
        Tweet.all.to_json
       end
    get "/tweets/:id" do |id| 
        Tweet.find(id).to_json
    end
    post "/tweets" do
        new_tweet = Tweet.new(JSON.parse(request.body.read)).save
    end
end