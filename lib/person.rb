# require 'pry'
# your code goes here

class Person

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

# def hygiene=(num)
#   @hygiene +=num
# end


def happiness=(hap)
  if hap > 10
    @happiness = 10
  elsif hap < 0
    @happiness = 0
  else
  @happiness = hap
  end
end

def hygiene=(hyg)
  if hyg > 10
    @hygiene = 10
  elsif hyg < 0
    @hygiene = 0
  else
    @hygiene = hyg
  end
end

def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene +=4
  hygiene
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  hygiene
  self.happiness += 2
  happiness
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  person.happiness += 3
  self.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  person.name
  if topic == "politics"
    person.happiness -=2
    self.happiness -=2
    return 'blah blah partisan blah lobbyist'
  elsif topic == "weather"
    person.happiness +=1
    self.happiness +=1
    return 'blah blah sun blah rain'
  else
    return 'blah blah blah blah blah'
  end
end

















end

# Pry.start
