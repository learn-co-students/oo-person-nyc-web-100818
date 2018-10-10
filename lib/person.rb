# your code goes here
class Person

  def initialize(name)
    @name = name
    @happiness = 8
    @original_hygiene = 8
    @bank_account = 25
  end

  attr_reader :name, :happiness
  attr_accessor :bank_account

  # def bank_account=(bank_account)
  #   @bank_account = bank_account
  # end

  # def happiness
  #   @happiness
  #   #@happiness_points = happiness + 1
  #   #@new_happiness = @happiness_points + 1
  # end

  def happiness=(new_happiness)
    # if new_happiness < 10
    @happiness = new_happiness
    # [0..10]
    # new_happiness.clamp(0,10)
    # [new_happiness, 0, 100].sort[100]
    # new_happiness[0..10]
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      new_happiness = @happiness
    end
  end

  def hygiene
    @original_hygiene
  end

  def hygiene=(new_hygiene)

    @original_hygiene = new_hygiene
    # @original_hygiene += 4

    if new_hygiene > 10
      @original_hygiene = 10
    elsif new_hygiene < 0
      @original_hygiene = 0
    else
     new_hygiene = @original_hygiene
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @original_hygiene > 7
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
    self.hygiene=(@original_hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@original_hygiene-3)
    self.happiness=(@happiness+2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness=(@happiness+3)
    person.happiness += 3
    return "Hi #{person.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness=(@happiness-2)
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness+1)
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
