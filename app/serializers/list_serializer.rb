class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :contentList_id, :genre
end
