class ContentSerializer < ActiveModel::Serializer
  attributes :id, :genre, :type, :pposter_img, :wideposter_img, :video, :likes, :dislikes, :favorited
end
