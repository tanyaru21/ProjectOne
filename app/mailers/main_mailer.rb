class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_author.subject
  #
  def notify_question_author(answer)
  	
  	sleep 5 #will take the system 5 secto send an email, submitting an answer will be slower

    @greeting = "Hi"
    @answer = answer

    mail to: answer.question.email, from: answer.email #subject: "New answer to your question" or in config - locales - en.yml for a different language
  end
end
