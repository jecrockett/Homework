# 1
f = "first"
l = "last"

puts f + l
puts l + f
puts f + " " + l
puts l + " " + f + " " + l + " " + f

puts "#{f}#{l}"
puts "#{l}#{f}"
puts "#{f} #{l}"
puts "#{l} #{f} #{l} #{f}"
# can also do..
puts "#{f + l}"


# 2
name_1 = "Megan Smith"
name_2 = "Todd Park"

# Print out Megan different ways
puts name_1[0..4]
puts name_1[0, 5]
puts name_1.split[0]
puts name_1.split.first


# Technically the first strategy would work for Todd as well, but it would be returning "Todd " with the extra space at the end. The array technique would work too.

# Print out Todd's initials
puts name_2[0] + name_2[5]

#can also do..
# puts name_1.split[0][0] + name_1.split.[1][0]


# 3

a = 12
b = 65
c = 31
d = 98

average = (a + b + c + d) / 4
puts average

# Yes, the real answer is 51.5 but this results is 51. The equation is using integers rather than floats, so the results is a rounded value.

result_1 = a + b * c / d
puts result_1

result_2 = (a + b) * c / d
puts result_2
result_3 = (a + b * c) / d
puts result_3


# 4

a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

puts (a+b+c+d).length

puts (a+b+c+d).length / 4


# 5
age = 5
puts "Happy " + "happy " * (age - 1) + "birthday!"
puts ("happy " * age + "birthday!").capitalize


# 6

string = "kalamazoo"
puts string[0] + (string.length - 2).to_s + string[-1]
