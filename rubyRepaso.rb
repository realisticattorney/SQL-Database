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

