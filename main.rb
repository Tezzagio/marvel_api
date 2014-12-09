#main.rb

require './heros.rb'
require './superheros.rb'
#require './play.rb'

	

def greeting
		intro = "Hello and welcome to my Midterm project."
		return intro
	end
	var = greeting
	puts var

	puts "What is your first name?"
	name = gets.chomp
	#character = Characters.new(name)

def list
		choose = "Please scan through the Marvel Comics, character list shown below."
		return choose
	end
	var = list
	puts var
	
require_relative 'introduction.rb'


def selection
		question = "What number in this list, does the character Agent X occupy?"
		return question 
	end
	var = selection
	puts var
	

	win = false

while !win

guessed_number = gets.to_i


if guessed_number > 14 then

	puts "Sorry too high, please try again."

elsif guessed_number < 14 then

	puts "Sorry too low, please try again."

elsif guessed_number == 14 then
	  puts "Spot on! Thats right!"
	  win = true
	end

end

	puts "Ok, lets move on!"


  	#round = Rounds.new(character)
  	#round.play

 	#require_relative 'play.rb'

def possibility
    choice = "This character list is not extensive. If it was a possiblity, which Superhero would you like to be for a day?"
    return choice 
	end
  var = possibility
  puts var
  name = gets.chomp
  

	puts "Thats a great choice, now I know what superhero pajamas you wore as a child, hehe!"






