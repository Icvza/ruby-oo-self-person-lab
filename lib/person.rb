require 'pry'

class Person

    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(bank_account)
        @bank_account = bank_account 
    end

    def happiness=(happiness)
        if happiness > 10
             @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene =10
        else
        @hygiene = hygiene
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
        
    end

    def clean? 
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(money)
        @bank_account += money
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
       
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        end

        if topic == topic
            return "blah blah blah blah blah"
        end
        
    end








end

