class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :publisher, :publish_date, :console, :players, :image_url, :reviews
end
