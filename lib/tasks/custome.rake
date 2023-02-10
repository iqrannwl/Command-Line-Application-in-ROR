
namespace :users do
    desc "Fetches data from the database and outputs it to the console"
    task :user_data => :environment do
        # puts add_user
        # get_data
        # delete_user
        update_user

    end
end



def add_user 
    print "User Name: "
    name = STDIN.gets.chomp
    print "User Email: "
    email = STDIN.gets.chomp
    print "User Age: "
    age = STDIN.gets.chomp
    user = User.new(:name=>name, :email=>email , :age=>age)
    user.save
    return "User Added Successfully"
end


def get_data 
    total_users = 0
    User.all.each do |user|
        total_users +=1
        puts "Name: #{user.name} Email: #{user.email} Age: #{user.age}"
    end
    puts "Total User: #{total_users}"
end

def delete_user
    id = STDIN.gets.chomp.to_i
    user = User.find(id)
    user.destroy
    return "User Deleted! "
end


def update_user  
    print "User Name: "
    name = STDIN.gets.chomp
    print "User Email: "
    email = STDIN.gets.chomp
    print "User Age: "
    age = STDIN.gets.chomp
    print "User Id: "
    id = STDIN.gets.chomp.to_i

    user = User.find(id)
    user.name = name 
    user.email = email
    user.age =age
    user.save
    return "User updated Successfully"
end
    
















# myhash[:name] = user.name 
# myhash[:email] = user.email
# myhash [:age] = user.age
# myhash[:total_users] = total_users + 1