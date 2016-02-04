class TestMailer < ActionMailer::Base
  def welcome_email
    mail(:from=>"limichelle21@gmail.com", :to => "limichelle21+test@gmail.com", :subject => "Test mail", :body => "Test mail body")
  end
end