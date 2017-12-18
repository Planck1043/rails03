class Post < ApplicationRecord
  belongs_to :notice
  validates :content, presence: true
end
