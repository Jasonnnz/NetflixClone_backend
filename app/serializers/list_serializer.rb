class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content_id, :genre
end
