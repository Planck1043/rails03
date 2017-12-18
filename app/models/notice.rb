class Notice < ApplicationRecord
  has_many :posts
  validates :title, presence: true,
                    length: { minimum: 5 }
end
