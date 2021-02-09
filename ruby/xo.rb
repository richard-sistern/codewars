# Kata: Exes and Ohs
def XO(str)
  x_count = str.scan(/[Xx]/).count
  o_count = str.scan(/[Oo]/).count

  x_count == o_count ? true : false
end

puts XO("ooxx") # true
puts XO("xooxx") # false
puts XO("ooxXm") # true
puts XO("zpzpzpp") #true // when no 'x' and 'o' is present should return true
puts XO("zzoo") # false
