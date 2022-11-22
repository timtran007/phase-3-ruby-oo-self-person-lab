require "pry"

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize (name, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (number)
        @happiness = if number > 10 
            10
        elsif number < 0
            0
        else
            number
        end
    end

    def hygiene= (number)
        @hygiene = if number > 10 
            10
        elsif number < 0
            0
        else
            number
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene >7
    end

    def get_paid (amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        hygiene= (self.hygiene += 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        hygiene= (self.hygiene -= 3)
        happiness= (self.happiness +=2)
        "♪ another one bites the dust ♫"
    end

    
    def call_friend (person)
        happiness= (self.happiness +=3)
        happiness= (person.happiness +=3)
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic == "politics"
            happiness= (self.happiness -= 2)
            happiness= (person.happiness -= 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            happiness= (self.happiness += 1)
            happiness= (person.happiness += 1)
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end
    end


end

felix = Person.new("Felix")





