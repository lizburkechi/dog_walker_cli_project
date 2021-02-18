class YouLetTheDogsOut
  
   attr_accessor :dog, :walk, :dog_walker 

     def run
       welcome
       login_sign_up
       #exit
    end
  
    private

    def welcome
      puts  "🐩 Welcome to YouLetTheDogsOut! 🐕"
      sleep (4)
    end

    def login_sign_up  #this all works
      puts "Does your dog have an account with us? (yes/no)"
      response = STDIN.gets.chomp
      if response == "no"
         sign_up
      elsif response == "yes"
         login(dog_tag)
      else
         run
      end
    end
    
    def sign_up
      puts "No problem. We just need to get a little information from you.."
      puts "Please enter your dog's name:"
      new_dog_name = STDIN.gets.chomp
      puts "Great. Now, what is your home address?"
      new_dog_address = STDIN.gets.chomp
      dog_tag = Dog.create(dog_name: new_dog_name, dog_address: new_dog_address)
      menu(dog_tag)
      end
   
    def login(dog_tag)
      puts "Please enter your dog's name:"
      dog_name = STDIN.gets.chomp
      if Dog.find_by(dog_name: dog_name)
         login_helper(dog_tag)

      end
    end

    def login_helper(dog_tag)
      puts "Next, please confirm your dog's address:"
      dog_address = STDIN.gets.chomp
      if Dog.find_by(dog_address: dog_address)
         dog_tag = Dog.find_by(dog_address: dog_address)
         puts "Welcome back!"
         sleep (2)
        menu(dog_tag)
      else
         puts "Sorry, I don't see an account that matches this information."
         run
      end
    end

    def walker_names
      DogWalker.all.map{|walker| walker.walker_name}
    end
  
    def menu(dog_tag)
      puts "What would you like to do today?"
      puts "Schedule a walk                  [ schedule ]"
      puts "Cancel a walk                    [  cancel  ]"
      puts "Modify an existing appointment   [  modify  ]" 
      puts "Delete account                   [  delete  ]"
      choice = STDIN.gets.chomp
      if choice == "schedule"
         schedule_appointment 
      elsif choice == "delete"
        delete_account(dog_tag)
      else
        menu_helper  
      end
    end
  
    def delete_account(dog_tag)
      puts "To delete your account please confirm your dog's address:"
      dog_address = STDIN.gets.chomp
      if Dog.find_by(dog_address: dog_address)
      dog_delete = Dog.find_by(dog_address: dog_address)
      dog_delete.delete
      puts "👋 We hardley knew ye.. 👋"
      end
    end
  
    def menu_helper(dog_tag)
      puts "still werkin on change/cancel"
    end
  
       def schedule_appointment(dog_tag)
       puts "📆 Great. Let's schedule and appointment! 📆"
       sleep (2)
       puts "Please enter a date and time 
       (Format: February 20, 2021 4:30): "
       appt_date = STDIN.gets.chomp
       appt_date = DateTime.parse(appt_date)
       puts "Thank you, now choose from one of our available walkers:"
       puts walker_names
       walker_choice = STDIN.gets.chomp
       new_walk_appt = Walk.create(walk_appt: appt_date, walker_id: walker_choice, dog_id: 1)
       confirmation
       end
  
  def confirmation
   puts "hi"
  end
  
  
  
  def exit
   exit
  end

        
end



  
