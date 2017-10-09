class Question < ApplicationRecord
	validates :email, presence: true, length: {maximum: 50 }
	validates :body, presence:true, length: {maximum: 250 }

	def gravatar
		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
	end
	
end
