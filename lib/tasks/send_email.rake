desc "Send email." 
  task :send_email => :environment do 
     User.all.each do |user|
       UserMailer.welcome_mail(user.id).deliver
     end
 end