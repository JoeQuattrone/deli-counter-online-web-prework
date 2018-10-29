katz_deli = []

def line(katz_deli)
  
  number = katz_deli.index
  if katz_deli.length == 0 
    puts "The line is currently empty."
  end
  if katz_deli.length >= 1
    new_array=[]
      katz_deli.each_with_index.map do |name, index|  
      new_array.push( "#{index + 1}. #{name}")
    end
    puts "The line is currently: " + new_array.join(" ")
  end
end

def take_a_number(katz_deli)
  #katz_deli is no longer an array of names but an array of ticket numbers
  #1. push the number 1 to the katz_deli array
  ticket = katz_deli.length + 1
  katz_deli.push(ticket)
  #2 output the ticket number and the place in line to the user

  
  puts ("Welcome, your ticket number is #{ticket}. You are number #{katz_deli.length} in line.")
 
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
    
  else 
    person = katz_deli.shift()
    puts "Currently serving #{person}."
  end

end

line = []
take_a_number(line)
take_a_number(line)
now_serving(line)
now_serving(line)
now_serving(line)