class Person
attr_reader :name
attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
        return @happiness = 10
      elsif happiness < 0
        return @happiness = 0
      else
        return @happiness = happiness
      end
  end

  def hygiene=(hygiene)
    if hygiene > 10
        return @hygiene = 10
      elsif hygiene < 0
        return @hygiene = 0
      else
        return @hygiene = hygiene
      end
  end

  def hygiene
    @hygiene
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness
  end

  def happy?
    if @happiness>7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene>7
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
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end


  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
