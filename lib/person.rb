class Person
  
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  def hygiene=(hygiene)
    @hygiene = hygiene
    #max = 10, min = 0
    if @hygiene >= 10
      @hygiene = 10 #max
    elsif
       @hygiene <= 0
      @hygiene = 0 #Min
    end
  end


  def happiness=(happiness)
    @happiness = happiness
    if @happiness >= 10
      @happiness = 10 #max
    elsif @happiness <= 0
      @happiness = 0 #min
    end
  end


  def happy?
    @happiness > 7 ? true : false
  end


  def clean?
    @hygiene > 7 ? true : false
  end

   #The `get_paid` method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
   def get_paid(salary)
     self.bank_account += salary
     return "all about the benjamins"
   end

   #3. The `take_bath` method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

   def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  #4. The `work_out` method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  #5. The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    return "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  #6. Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
    #* If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
  #  * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
  #  * If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".


  def start_conversation(friend, topic)
    if topic == 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      friend.happiness += 1
      return 'blah blah sun blah rain'
    else
      return  'blah blah blah blah blah'
    end
  end

end
