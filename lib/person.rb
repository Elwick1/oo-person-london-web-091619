# your code goes here
class Person
    attr_reader :name
    #attr_accessor :salary
  #attr_accessor  :happiness, :hygiene :bank_account,

    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness =happiness
        @hygiene = hygiene
        
    end
    
    def bank_account=(bank_account)
         @bank_account = bank_account
     end

     def bank_account
        @bank_account
     end

     def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
     end
     
     def happiness=(happiness)
        if happiness >= 10
            happiness = 10
        elsif happiness <= 0
        happiness = 0
        end 
        @happiness = happiness  
    end

    def happiness
        @happiness
    end

    def happy?
        if happiness >7
            return true
        else
            return false
        end
        @happiness = happiness
    end
    
    def  hygiene=(hygiene)
        if hygiene >= 10
            hygiene = 10
        elsif hygiene <= 0
        hygiene = 0
        end 
        @hygiene = hygiene
    end

    def hygiene
        @hygiene
    end

    def clean?
        if hygiene >7
            return true
        else
            return false
        end
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

     def work_out
     self.happiness += 2
     self.hygiene -= 3
    return "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        return "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            return "blah blah sun blah rain"
            elsif topic != "politics"|| topic != "weather"
                return "blah blah blah blah blah"
            end
    end
end







