require_relative 'helper'
class Person
  include Helper
  attr_accessor :attributes, :energy

  def initialize(attributes = {})
    @attributes = attributes
    @energy = 10
  end

  # This returns a string of the person's name
  def name
    attributes[:name]
  end
  # This returns a string of the person's first name
  def first_name
    name.split(' ')[0]
  end
  # This returns a string of the person's last name
  def last_name
    name.split(' ')[1]
  end
  # This returns a string of the person's age
  def age
    attributes[:age]
  end
  # This returns a fixnum of the person's birthyear
  def birthyear
     (age.to_i - Time.now.year.to_i).abs
  end
  # This printss to the console
  def say(words)
    puts "#{words}"
  end
  # This returns @energy minus a random subtracted from it
  def run
    @energy -= rand(5)
  end
  # This returns a string describing the Person instances energy level
  def energy_level
    case @energy
    when -100..-1
      "OMG ABOUT TO DIE!"
    when 0..3
      "tired"
    when 4..6
      "doing ok"
    when 7..10
      "ready to go"
    end
  end
  # This is a setter to change the instances energy level
  def energy_level=(amount)
    @energy += amount
  end

end