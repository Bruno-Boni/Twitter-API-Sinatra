class Tweet 
    include Mongoid::Document 
    include Mongoid::Timestamps

    field :author, type: String, default: "Anon"
    field :content, type: String
    field :image, type: String
    field :tags, type: Array, default: []
    field :likes, type: Integer, default: 0
end