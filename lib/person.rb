require "pry"

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def happiness=(new_happiness)
    @happiness = new_happiness
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def hygiene=(new_hygiene)
    @hygiene = new_hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
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
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness + 3)
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness=(@happiness - 2)
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
