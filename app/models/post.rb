class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }

  def should_generate_new_friendly_id
    title_changed? || slug.blank?
  end
end
