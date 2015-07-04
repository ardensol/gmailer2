desc "Import users." 
  task :import_users => :environment do
    File.open("users.txt", "r").each do |line|
      name, email = line.strip.split("\t")
      u = User.new(name: name, email: email)
      u.save
    end
  end