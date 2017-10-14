class Question < ApplicationRecord
	include HasGravatar
	
	validates :email, presence: true, length: {maximum: 50 }
	validates :body, presence:true, length: {maximum: 250 }
	has_many :answers
end
