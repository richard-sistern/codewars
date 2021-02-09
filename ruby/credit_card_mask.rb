# Kata: Credit Card Mask
def maskify(cc)
  leave = 4
  mask = '#'

  cc.gsub(/.(?=.{#{leave}})/, mask)
end

puts maskify('4556364607935616') # should return '############5616'
puts maskify('64607935616')      # should return '#######5616'
puts maskify('1')                # should return '1'
puts maskify('')                 # should return ''

# Positive lookahead
# https://www.regular-expressions.info/lookaround.html

# .           => one character only
# (?=         => which must be followed by
# .{#{leave}} => a number of characters
