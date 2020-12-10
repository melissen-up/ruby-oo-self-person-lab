require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name_param)
        @name = name_param
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene
        end
    end
    
    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        # binding.pry
        self.bank_account = self.bank_account + salary
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
       self.happiness = self.happiness + 3
       friend.happiness = friend.happiness + 3
       p "Hi #{friend.name}! It's #{self.name}. How are you?"        
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
    
end

melissa = Person.new("Melissa")


# binding.pry
0
