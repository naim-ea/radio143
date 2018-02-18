class Post < ApplicationRecord

    belongs_to :user
    has_many :comment

    validates :title, :content, presence: true
    validates :title, length: { maximum: 255 }

end
