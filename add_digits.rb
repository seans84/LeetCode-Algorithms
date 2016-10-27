# Given a non-negative integer num, repeatedly
# add all its digits until the result has only
# one digit.
#
# For example:
#
# Given num = 38, the process is like: 3 + 8 = 11,
# 1 + 1 = 2. Since 2 has only one digit, return it.

def add_digits(num)
  arr = num.to_s.split("").map { |num| num.to_i }
  if arr.length < 2
    return arr.pop
  else
    add_digits(arr.map.reduce(&:+))
  end
end

add_digits(0)