class Article < ApplicationRecord

  validates :title, presence: true
  validates :content, presence: true, length: {maximum: 40, too_long: "That is too many characters"}
  validates :author, presence: true
  validates :category, presence: true
  validates :published_at, presence: true

end
