require "pry"
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = points
    if self.happiness < 0
      self.happiness = 0
    elsif self.happiness > 10
      self.happiness = 10
    end
  end

  def hygiene=(points)
    @hygiene = points
    if self.hygiene < 0
      self.hygiene= 0
    elsif self.hygiene> 10
      self.hygiene = 10
    end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
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

   def call_friend(friend)
     self.happiness += 3
     friend.happiness += 3
     "Hi #{friend.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(person, topic)
     if topic.downcase == "politics"
       self.happiness -= 2
       person.happiness -= 2
       return "blah blah partisan blah lobbyist"
     elsif topic.downcase == "weather"
       self.happiness += 1
       person.happiness += 1
       return "blah blah sun blah rain"
     else
      return "blah blah blah blah blah"
     end
   end

end
