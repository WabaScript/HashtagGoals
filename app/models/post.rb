class Post < ApplicationRecord
    belongs_to :user
    belongs_to :goal

    validates :content, presence: true
    validates :content, length: { maximum: 500 }
    # validates :image_url, format: {with: /\.(png|jpg)\Z/i}
end
