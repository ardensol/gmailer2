desc "Send email." 
  task :second_email => :environment do 
     User.all.each do |user|
       UserMailer.second_mail(user.id).deliver
     end
 end