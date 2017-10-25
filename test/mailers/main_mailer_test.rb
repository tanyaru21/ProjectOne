require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do

  	question = Question.create email: 'author@question.com', body: 'a test question' #using this and line below instead of creating test data in fixtures
  	answer = Answer.create email: 'author@answer.com', body: 'a test answer'

  	question.answers << answer #making sure answer is associated with the same ? by appending it to question arr
    mail = MainMailer.notify_question_author(answer)
    assert_equal "New answer to your question", mail.subject
    
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    
    assert_match answer.body, mail.body.encoded
  end

end
