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
