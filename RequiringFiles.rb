# Requiring Files

# So far most labs have a similar file strucutre 
# Lib, spec, README.md 

# As we expand our understanding of programming in Ruby 
# And start to work with larger, more complex apps 
# We'll start to see more peices and components being added 
# run files, environment files etc. 
# Then we'll start seeing database folders 
# before long, we'll see many files in many folders, all doing their small part for the application.

# Classes Defined in Different Files 
# If we defined Plant and Garden in separate files plant.rb and garden.rb 
# If garden.rb is dependent on methods in plant.rb we get the error 
# uninitialized constant Plant (NameError)


# Define require_relative and require 
# By requring a file, we tell Ruby, go load the code that exists in this file 
# There are two ways to do this require_relative and require

# require and require_relative are similar to the import keyword in JavaScript. There are a few key distinctions:
# Unlike with the import keyword in JS, when you require a file, 
# you don't specify any variables 
# instead you're essentially loading in all the methods and class definitions defined in that file
# require and require_relative aren't keywords — they're actually both methods defined in Ruby's Kernel module (Links to an external site.).

# require_relative
# The require_relative [] mehtod accepts a relative file path to the file we wnat to require 
# meaning we're providing a file path that starts from the file in which the require_relative statement is being called 

#   require_relative '../lib/ruby_file.rb' 
# .. means that inside the parent folder of the current file being run 
# When dealing with applications that have many neighboring files we'll us require_relative
# The .rb file extension is optional with require_relative, so using require_relative '../lib/ruby_file' would also work.

# Since applications can be installed in many places on a computer, any internal file 
# requirement should be relative to each other rather, than specifying an absolute path to the location 


# require 
# the require[] method accepts absolute file path 
# Meaning a file location relative to the root directory 
# rewuire will also accept shorten names, check if any matches are found in the directories located in your shell's PATH variable 
# We don't often require files using their absolute path, but we will frequently require libraries using a shortened name. You have already seen this:
# require 'pry'
# Pry is a gem, a bundle of preexisting code that we can install on our computers 
# when we write this we tell Ruby to load that bundle of code up before continuing 
# once loaded we have access to whatever classes and modules are defined in pry 

