# 1 Easy Looping

5.times do
  puts "Line"
end


#2 Looping with a condition

5.times do |i|
  if i.even?
    puts "Line is even"
  else
    puts "Line is odd"
  end
end


# 3 Three Loops

5.times do |i|
  puts "This is my output line #{i + 1}"
end

line = 0
while line < 5
  line += 1
  puts "This is my output line #{line}"
end

counter = 0
loop do
  counter += 1
  puts "This is my output line #{counter}"
  if counter == 5
    break
  end
end


# 4 Rando-Guesser

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
loop do
  secret_num = numbers.sample
  puts "(The secret number is #{secret_num})"
  guess = numbers.sample
  puts "Guess is #{guess}"

  if guess == secret_num
    puts "You win!"
    break
  else
    puts "Guess again!"
  end
end
