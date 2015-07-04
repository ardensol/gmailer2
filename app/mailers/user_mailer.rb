class UserMailer < ActionMailer::Base
  # edit to your email
  default from: "fake@gmail.com"

  def welcome_mail(user_id)

    # This finds the User 
  	@user = User.find(user_id)

    # This is an operand.  If the name is NA in your file it'll say "Hi There" instead of "Hi Jason"
  	@name = @user.name == "NA" ? "There" : @user.name
  	@subject = @user.name == "NA" ? "Quick Question" : "#{@user.name}, Pitch on Blah Blah Blah"
    mail to: @user.email, subject: @subject
  end

  def second_mail(user_id)
  	@user = User.find(user_id)
  	@name = @user.name == "NA" ? "There" : @user.name
  	@subject = @user.name == "NA" ? "Following Up: Sample Site" : "#{@user.name}, Pitchon Blah Blah Blah"
  	mail to: @user.email, subject: @subject
  end
end

