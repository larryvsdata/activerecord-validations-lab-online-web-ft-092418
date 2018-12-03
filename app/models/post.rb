class Post < ActiveRecord::Base
  validates :title , presence: true
  validates :content , length: {minimum: 250}
  validates :summary , length: {maximum: 250}
  validates :title, format: {with: /Won't Believe|Secret|Top\s\d|Guess/}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
