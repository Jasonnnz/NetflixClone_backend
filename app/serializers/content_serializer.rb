class ContentSerializer < ActiveModel::Serializer
  attributes :id, :genre, :type, :poster_img, :wideposter_img, :video, :likes, :dislikes, :favorited
end
