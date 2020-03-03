class Goal < ApplicationRecord
    has_many :follow_goals, foreign_key: :goal_id
    has_many :followers, through: :follow_goals

    has_many :posts

    belongs_to :owner, :class_name => "User", foreign_key: :owner_id

    validates :title, :description, :timeline, presence: true
    validates :title, length: { maximum: 100 }
    validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end  
  
end
