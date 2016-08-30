#!/usr/bin/env ruby

class Car
  
  attr_accessor :make, :year, :color
  attr_reader :wheels
  attr_writer :doors
  
  def initialize(options={})
    self.make = options[:make] || 'Volvo'
    self.year = (options[:year] || 2007).to_i
    self.color = options[:color] || 'unknown'
    @wheels = 4
  end
  
  def self.colors
    ['blue', 'black', 'red', 'green']
  end
  
  def full_name
    "#{self.year.to_s} #{self.make} (#{self.color})"
  end
  
end

puts
puts "Enter information for the car you want to purchase."
puts

print "Make: "
make = gets.chomp

print "Year: "
year = gets.chomp

print "Color: "
color = gets.chomp

car = Car.new(:make => make, :year => year, :color => color)

puts
puts "I understand that you want to purchase: #{car.full_name}."
puts
