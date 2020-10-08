print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adj = gets.chomp
print 'Enter an adverb: '
adv = gets.chomp

choice1 = "Can you #{verb} your #{adj} #{noun} #{adv}? That's so funny."
choice2 = "Why would you #{verb} #{adv} on your #{adj} #{noun}. Holy smokes."
choice3 = "Is it smart to #{verb} #{adv} when you're a(n) #{adj} #{noun}"

puts [choice1,choice2,choice3].sample