class YouLetTheDogsOut
  
   attr_accessor :dog, :walk, :dog_walker
   attr_reader 
  
    def run
       welcome
       login_sign_up
       #exit
    end
  
    private

    def welcome
        puts  "🐩 Welcome to YouLetTheDogsOut! 🐕"
        sleep (4)
        system 'clear' 
    end

    def login_sign_up
      puts "Does your dog have an account with us? (yes/no)"
      response = STDIN.gets.chomp
      if response == "no"
         sign_up

      #elsif response == "yes"
        # login
     # else
         #run
     # end
    end
    
    def sign_up
      puts "No problem. We just need to get a little information from you.."
      puts "Please enter your dog's name:"
      dog_name = STDIN.gets.chomp
      puts "Great. Now, what is your home address?"
      dog_address = STDIN.gets.chomp
      dog_tag = Dog.create(dog_name: dog_name, dog_address: dog_address)
      puts "hi"
      schedule_walk_appt(dog_tag)
    end
   
    def login
      puts "I'll get to this after I finish my schedule_walk section"
    end

    def schedule_walk_appt(dog_tag)
     # binding.pry
      puts "werk it"
    end







   end     
end



  
