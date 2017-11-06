class Postcomment < ApplicationRecord
	validates :text, presence: true
  	validates :text, length: { in: 5..255 }
	belongs_to :user
	belongs_to :post
end
