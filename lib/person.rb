# your code goes here
require "pry"
class Person
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account= (value)
        @bank_account = value
    end

    def happiness
        @happiness
    end

    def happiness= (value)
        if value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else 
            @happiness = value
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene= (value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else 
            @hygiene = value
        end
    end

    def clean? 
        if @hygiene > 7
            true
        else 
            false
        end        
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

    def get_paid(amount)
        self.bank_account= (@bank_account + amount)
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= (@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene= (@hygiene - 3)
        self.happiness= (@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
            friend.happiness= (friend.happiness + 3)

            self.happiness= (@happiness + 3)

            "Hi #{friend.name}! It's #{self.name}. How are you?"
            # binding.pry
    end

    def start_conversation(person, topic)
        if topic == "politics"            
            self.happiness= (@happiness - 2)
            person.happiness= (person.happiness - 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness= (@happiness + 1)
            person.happiness= (person.happiness + 1)
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'

        end
    end

    # binding.pry
end