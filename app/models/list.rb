class List < ApplicationRecord
    belongs_to :user
    has_many :contentLists 
    has_many :contents, through: :contentLists
end
