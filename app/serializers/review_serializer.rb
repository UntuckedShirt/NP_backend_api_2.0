class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating, :likes, :game_id
  
end
