print "Please write word or multiple words: "

words = gets.chomp
characters = words.split(' ').join.length

puts "There are #{characters} characters in \"#{words}\"."