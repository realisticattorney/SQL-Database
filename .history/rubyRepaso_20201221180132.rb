6.even? #=> true
7.even? #=> false


# With the plus operator:
"Welcome " + "to " + "Odin!"   #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

irb :001 > 16.remainder(5) #it's the remainder when divided by the given argument
=> 1  

irb :001 > '4' == 4
This comparison returns false because we are comparing two different types.
Because '4' is a string and 4 is an integer, the == operator returns false. # in JAVASCRIPT WOULD'VE RETURN TRUE, AND FALSE WITH ===

Substrings
"hello"[0..1]   #=> "he"
"hello"[0, 4]   #=> "hell"



Escape characters
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark


name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

#capitalize
"hello".capitalize #=> "Hello"

#include?
"hello".include?("lo")  #=> true
"hello".include?("z")   #=> false

#upcase
"hello".upcase  #=> "HELLO"

#downcase
"Hello".downcase  #=> "hello"

#empty?
"hello".empty?  #=> false
"".empty?       #=> true

#length
"hello".length  #=> 5

#reverse
"hello".reverse  #=> "olleh"

#split
"hello world".split  #=> ["hello", "world"]
"hello".split("")    #=> ["h", "e", "l", "l", "o"]

#strip
" hello, world   ".strip  #=> "hello, world"



"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"





symbol



:symbol.to_s  #=> "symbol"
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
# Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. Symbols, on the other hand, are stored in memory only once, making them faster in certain situations.
# Symbols are like constants?
# One common application where symbols are preferred over strings are the keys in hashes. Sites = { Crypto: "http:/coinmarketcap.com" } here Crypto is the key
# Symbols vs. Strings
# To get a better idea of how symbols are stored in memory, give this a whirl in irb or a REPL. The #object_id method returns an integer identifier for an object. (And remember: in Ruby, everything is an object!)
"string" == "string";  #=> true





object_id 


"string".object_id == "string".object_id; #=> false
:symbol.object_id == :symbol.object_id    #=> true
object_id → integer
The same number will be returned on all calls to object_id for a given object, and no two active objects will share an id.
Object.new.object_id  == Object.new.object_id  # => false
(21 * 2).object_id    == (21 * 2).object_id    # => true
"hello".object_id     == "hello".object_id     # => false
"hi".freeze.object_id == "hi".freeze.object_id # => true





nil

nil.to_s      #=> ""
In Ruby, nil represents “nothing”. Everything in Ruby has a return value. When a piece of code doesn’t have anything to return, it will return nil

In programming, we need a way to express "nothing", and in Ruby, we do this through something called nil. A variable with a value of nil could be described as having 'nothing' or being 'completely empty', or even just simply 'not any specific type'. A situation where this may occur is where output is expected but none is returned, such as:
irb :001 > puts "Hello, World!"
Hello, World!
=> nil
The puts method prints out a string and returns nothing, so we see nil being returned after the string is displayed.

irb :001 > "Hello, World".nil?
=> false
if nil   #false
end

if 1 # true, 'cause 1 is something
end




hashes


A hash, sometimes referred to as a dictionary, is a set of key-value pairs. It is represented with curly braces { }. A key-value pair is an association where a key is assigned a specific value. A hash consists of a key, usually represented by a symbol, that points to a value (denoted using a =>) of any type of data. Let's make some hashes to get the feel of it. Type along!

irb :001 > {:dog => 'barks'}
=> {:dog => 'barks'}

irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"

You may have noticed, indirectly at this point, that every time you enter something into irb you see the => back, which is called a hash rocket (cool name, huh?), followed by whatever your Ruby expression returns. When you type something in at the irb prompt you are creating an expression. An expression is anything that can be evaluated, and pretty much everything you write in Ruby is an expression. An expression in Ruby always returns something, even if that's an error message or nil. We'll talk in more depth about return as we move on, but remember that Ruby expressions always return a value, even if that value is nil or an error.
movies = { jaws: 1975,  #same as :jaws => 1975,
           anchorman : 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]






puts vs return

# When we call the puts method, we\'re telling Ruby to print something to the screen. However, puts does not return what is printed to the screen. Expressions do something, but they also return something. The value returned is not necessarily the action that was performed. Let\'s take a look in irb.

   irb :001 > puts 'stuff'
   stuff
   => nil

a = puts "stuff"
puts a #returns nil




SCOPE


arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here? 
The answer is yes. The reason is because the for...do/end code did not create a new inner scope, since for is part of Ruby language and not a method invocation. When we use each, times and other method invocations, followed by {} or do/end, thats when a new block is created.



  Types of variables

  Constants are declared by capitalizing every letter in the variable's name, per Ruby convention. They are used for storing data that never needs to change. While most programming languages do not allow you to change the value assigned to a constant, Ruby does.It will however throw a warning letting you know that there was a previous definition for that variable.

     MY_CONSTANT = 'I am available throughout your app.'

     Global variables are declared by starting the variable name with the dollar sign ($). These variables are available throughout your entire app, overriding all scope boundaries. Rubyists tend to stay away from global variables as there can be unexpected complications when using them.
     $var = 'I am also available throughout your app.'

     Class variables are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable
'
     @@instances = 0

     Instance variables are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class. Instance variables can cross some scope boundaries, but not all of them.

     @var = 'I am available throughout the current instance of this class.'


Local variables are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.

Example of a local variable declaration:

Copy Code
var = 'I must be passed around to cross scope boundaries.'









desired_location = "Barcelona"
johns_location = desired_location

desired_location  #=> "Barcelona"
johns_location    #=> "Barcelona"


johns_location.upcase!  #=> "BARCELONA"

desired_location        #=> "BARCELONA" #BECAUSE   johns_location.upcase! CALLS desired_location and makes it upcase
johns_location          #=> "BARCELONA" 



irb :001 > a = 4
=> 4
irb :002 > b = a
=> 4
irb :003 > a = 7
=> 7
What is the value of b at this point? Take your best guess and then type this session into irb to find out.

You'll notice that the value of b remains 4, while a was re-assigned to 7. This shows that variables point to values in memory, and are not deeply linked to each other.
# BECAUSE MEMORY USES A DIFFERENT ID FOR EACH CALLING

irb :001 > first_name = 'Joe'
=> "Joe"  # it will always return a value




print vs puts
'
irb(main):001:0> print "Learning to code is FUN!"
Learning to code is FUN!=> nil

irb(main):002:0> print "1234"
1234=> nil


puts

irb(main):002:0> puts "Hey, I want 2 key lime pies."
Hey, I want 2 key lime pies.
=> nil

irb(main):003:0> x = "My name is ALEX! :)"
=> "My name is ALEX! :)"

irb(main):004:0> puts x
My name is ALEX! :)
=> nil

puts appends a new line to the argument passed in, whereas print keeps things all on one line. 
A very important thing to notice for both commands is that after printing whatever argument they are passed, puts and print both return nil.





gets

irb(main):001:0> gets
The Odin Project
=> "The Odin Project\n"
How about that? Let’s break this process down a bit.

You’ll notice that, unlike puts and print, gets actually returns the user input instead of returning nil. This means that the input can be assigned to a variable for you to then use and manipulate and twist and turn and spit back out.


'



LOOPS 


the loop LOOP


i = 0
loop do
 puts "i is #{i}"
 i += 1
 break if i == 10
end


i = 0
loop do
 i += 2
 if i == 4
   next        # skip rest of the code in this iteration
 end
 puts i
 if i == 10
   break
 end
end




You won’t see this loop used much in Ruby. If you find yourself using loop, know that there is probably a better loop for you out there, like one of the more specific loops below.


the WHILE LOOP

i = 0
while i < 10 do
puts "i is #{i}"
i += 1
end

Because you declare the condition that breaks the loop up front, the intention of your code is much clearer, making this code easier to read than our loop loop above.

while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end

This example shows the flexibility advantage of a while loop: it will run until its break condition is met, which could be for a variable number of loops or a number of loops that is initially unknown. 



x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end




the UNTIL LOOP

i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end

The until loop is the opposite of the while loop.

until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end

Much more readable!



(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d



the FOR LOOP 


For Loop
for i in 0..5
  puts "#{i} zombies incoming!"
end

A for loop is used to iterate through a collection of information such as an array or range. 






the TIMES LOOP

  5.times do
     puts "Hello, world!"
   end

   
5.times do |number|
 puts "Alternative fact number #{number}"
end

If you need to run a loop for a specified number of times, then look no further than the trusty #times loop. 





Upto and Downto Loops

5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5

You can use these methods to iterate from a starting number either up to or down to another number, respectively.






ARRAYS




Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, "Hello")   #=> ["Hello", "Hello", "Hello"]
Array.new(3, Array.new) #=> [[], [], []]


str_array = ["This", "is", "a", "small", "array"]

str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]


num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]


num_array = [2, 3, 4]

num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]


num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6] #quita 4,5,6, lo que devuelve es el array num_array eh
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]








adding && substracting arrays 


a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]








array methods (over 150, here just a few)

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"




#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################
#########################################################################





ITERATORS


names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }


Each time we iterate over the array, we need to assign the value of the element to a variable. In this example we have named the variable name and placed it in between two pipes |. After that, we write the logic that we want to use to operate on the variable, which represents the current array element. In this case it is simply printing to the screen using puts.

A block is just some lines of code ready to be executed. When working with blocks there are two styles you need to be aware of. By convention, we use the curly braces ({}) when everything can be contained in one line.
We use the words do and end when we are performing multi-line operations. Lets add some functionality to our previous program to try out this do/end stuff.

  names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
  x = 1
  
  names.each do |name|
    puts "#{x}. #{name}"
    x += 1
  end


  array = [10,20,30,40,50,60,70,80,90,100] 
  array.each_index {|i| print "#{array[i]} "}





  CONDITIONAL LOGIC


  The concept is pretty simple. You have some code that you only want to execute under specific conditions, so you need a way for the computer to check whether those conditions have been met.

  5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
   a = 5
   b = 5
   a.equal?(b) #=> true

   a = "hello"
   b = "hello"
   a.equal?(b) #=> false

   This happens because computers can’t store strings in the same efficient way they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory.



   <=> (spaceship operator) returns the following:

-1 if the value on the left is less than the value on the right;
0 if the value on the left is equal to the value on the right; and
1 if the value on the left is greater than the value on the right.
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1
a = 'g'
b = 'g'
if a <=> b
   puts "gay"
end


if 1 < 2 && 5 < 6
 puts "Party at Kevin's!"
end

# This can also be written as
if 1 < 2 and 5 < 6
 puts "Party at Kevin's!"
end

if !(10 < 5)  #=> true




grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
 when 'A' then "Hell yeah!"
 when 'D' then "Don't tell your mother."
 else "McDonald's is hiring!"
end




HASHES 

my_hash = { 
 "a random word" => "ahoy", 
 "Dorothy's math test score" => 94, 
 "an array" => [1, 2, 3],
 "an empty hash within a hash" => {} 
}

ACCESSING HASHES
shoes = {
 "summer" => "sandals",
 "winter" => "boots"
}

shoes["summer"]   #=> "sandals"


If you try to access a key that doesn’t exist in the hash, it will return nil:
shoes["hiking"]   #=> nil

Luckily, hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

ADDING AND CHANGING data
shoes["fall"] = "sneakers"
shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

You can also use this approach to change the value of an existing key.
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}

REMOVING data
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}


METHODS

books = { 
 "Infinite Jest" => "David Foster Wallace", 
 "Into the Wild" => "Jon Krakauer" 
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

MERGING

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }















BASIC ENUMERABLE
METHODS


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"] #new array


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }   # is a block, and the code inside this block is run for each element in your array. Because we have 5 friends in our array, this block will be run 5 times, once with each of the 5 elements.
#Within the block, you’ll notice that we have |friend|, which is known as a block variable

For multi-line blocks, the commonly accepted best practice is to change up the syntax to use do...end instead of {...}:
my_array = [1, 2]

my_array.each do |num|
 num *= 2
 puts "The new number is #{num}."
end


fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }






friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase) }
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

shouting_at_friends #=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

or just...


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`




###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################



REDUCE METHOD

my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

The first block variable in the reduce enumerable (sum in this example) is known as the accumulator. The result of each iteration is stored in the accumulator and then passed to the next iteration. 
The accumulator is also the value that the #reduce method returns at the end of its work. By default, the initial value of the accumulator is the first element in the collection, so for each step of the iteration, we would have the following:

Iteration 0: sum = 5 + 6 = 11
Iteration 1: sum = 11 + 7 = 18
Iteration 2: sum = 18 + 8 = 26


We can also set a different initial value for the accumulator by directly passing in a value to the #reduce method.

my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026



votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote| #value of keys by default is 0. 
  result[vote] += 1  # result will be the key, 
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}


what happened here? first

hundreds = Hash.new(100)
hundreds["first"]         #=> 100
hundreds["mine"]          #=> 100
hundreds["yours"]         #=> 100

hundreds = Hash.new(100)
hundreds["new"]           #=> 100
hundreds["new"] = 99
hundreds["new"]           #=> 99


Iteration 0:
result = {}
Remember, this hash already has default values of 0, 
Iteration 1:
The method runs result["Bob's Dirty Burger Shack"] += 1
result = {“Bob’s Dirty Burger Shack” => 1}
Iteration 2:
The method runs result["St. Mark's Bistro"] += 1
result = {“Bob’s Dirty Burger Shack” => 1, “St. Mark’s Bistro” => 1}
Iteration 3:
The method runs result["Bob's Dirty Burger Shack"] += 1
result = {“Bob’s Dirty Burger Shack” => 2, “St. Mark’s Bistro” => 1}






hashes again

HASHES ARE ARRAYS WHERE THE INDEX INSTEAD OF BEING A INTEGER CAN BE AN STRING SYMBOL OR EVEN ANOTHER HASH? (NOT SURE ABOUT THE LAST ONE)

grades = Hash.new(1) #this is a default value for keys of this hash
puts grades["a_key"] # => 1




grades = { "Jane Doe" => 10, "Jim Doe" => 6 }  #this has keys that are strings

options = { font_size: 10, font_family: "Arial" } # this sintax is just for symbols, which are like any other variables name but they're stored in memory just once





friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]




print invited_friends 

#=> ["Sharon", "Leo", "Leila", "Arun"]


puts invited_friends
"Sharon" 
"Leo"
"Leila"
"Arun"



CREATING A METHOD

def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"


def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!



def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")










DEFAULT PARAMETERS

def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!




What Methods Return
An important detail that a programmer must learn is understanding what your methods return. Having a good understanding of what your methods are returning is an important part of debugging your code when things don’t behave as expected.

How do we tell our methods what to return? Let’s revisit our my_name example method:

def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
Our my_name method returns “Joe Smith”. This may seem obvious because it’s the only thing inside the method. In most languages, however, such a method would not return anything because it does not have an explicit return statement, which is a statement that starts with the return keyword. The above example could just as easily be written with an explicit return:

def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
Ruby is one of the few languages that offers implicit return for methods,
which means that a Ruby method will return the last expression that was evaluated even without the return keyword

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.



def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

it's returning one of the two strings with an implicit return
BUT, THE IMPLICIT RETURN DONT STOP THE FUNCTION '
SEE THIS EXAMPLE:


def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.


Difference Between puts and return
A common source of confusion for new programmers is the difference between puts and return.

puts is a method that prints whatever argument you pass it to the console.
return is the final output of a method that you can use in other places throughout your code.





CHAINING THE METHODS

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"
Chaining methods together like this effectively has each method call build off of the outcome of the previous method in the chain. The process that takes place essentially produces the following steps:

["be", "to", "not", "or", "be", "to"].reverse
= ["to", "be", "or", "not", "to", "be"].join(" ")
= "to be or not to be".capitalize
= "To be or not to be"



puts 12.between?(10, 15)  #=> true




DEBUGGING

stack trace : error report





def double_words_in_phrase(string)
  string_array = string.split(' ')
  string_array.map { |word| word * 2 }
  string_array.join(' ')
end

double_words_in_phrase("This is a test")

#=> "This is a test"

#this didn't work. map crates a new array. 
#but if we put a bang to map    map!



def double_words_in_phrase(string)
  string_array = string.split(' ')
  string_array.map! { |word| word * 2 }
  string_array.join(' ')
end

p double_words_in_phrase("This is a test")

#"ThisThis isis aa testtest"


p vs puts

Using puts is a great way to debug, but there’s a HUGE caveat with using it: calling puts on anything that is nil or an empty string or collection will just print a blank line to your terminal.

This is one instance where using p will yield more information. As mentioned above, p is a combination of puts and #inspect, the latter of which essentially prints a string representation of whatever it’s called on.




EXAMPLE OF ERROR sintax

def method1
  method2
end
def method2
  puts invalid_variable
end
method1

Running this code will give you the following error:

/tmp/stack.rb:6:in 'method2': undefined local variable or method 'invalid_variable' for main:Object (NameError)
    from /tmp/stack.rb:2:in 'method1'
    from /tmp/stack.rb:9:in '<main>'
</main>


/tmp/stack.rb:6 #	File and line number
in 'method2' #	Method name
undefined local variable or method ‘invalid_variable‘	 #Error message
main:Object	# Class name
(NameError)	Exception name








