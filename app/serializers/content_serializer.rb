class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :type, :poster_img, :likes, :dislikes, :favorited, :overview, :release_year
end
