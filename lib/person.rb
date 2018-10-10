https://github.com/sarahpai/oo-person-nyc-web-100818

class Person

  attr_accessor :bank_account, :friend_happiness


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # @friend_happiness = 8

  end


  def happiness=(happiness)
    @happiness = happiness
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def name
    @name
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

    def get_paid(salary)
      @bank_account += salary
      "all about the benjamins"
    end

    def take_bath
      after_bath = @hygiene += 4
      self.hygiene=(after_bath)
    # @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      work_out = @hygiene -= 3
      self.hygiene=(work_out)
      workout_happiness = @happiness += 2
      self.happiness=(workout_happiness)
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      after_call  = @happiness += 3
      self.happiness=(after_call)
      friend.happiness=(friend.happiness + 3)
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
      if topic == "politics"
          self.happiness=(@happiness -= 2)
          friend.happiness=(friend.happiness - 2)
         "blah blah partisan blah lobbyist"
       elsif topic == "weather"
         self.happiness=(@happiness += 1)
         friend.happiness=(friend.happiness + 1)
        "blah blah sun blah rain"
      else

       "blah blah blah blah blah"


      end
    end


end# your code goes here
