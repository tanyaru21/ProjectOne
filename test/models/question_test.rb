require 'test_helper'

class QuestionTest < ActiveSupport::TestCase

	def setup
		@question = Question.new(email: "user@email.com", body: "Lorem Ipsum")
	end 

	test "question should be valid" do
		assert @question.valid?
	end

	test "email shouldnt be blank" do
		@question.email = "  "
		assert_not @question.valid?
	end 

	test "body should be present" do
		@question.body = "   "
		assert_not @question.valid? 
	end

	test "email shouldnt be too long and body shouldnt be too long" do
		@question.email = "a" * 39 + "@example.com"
		assert_not @question.valid?
		@question.body = "a" * 251
		assert_not @question.valid?
	end
end
