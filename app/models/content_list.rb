class ContentList < ApplicationRecord
    belongs_to :content 
    belongs_to :list 
    validates :content, uniqueness: {scope: :list}
end
