# Reverse digits of an integer.
#
# Example1: x = 123, return 321
# Example2: x = -123, return -321
# Must take into account possible stack overflows (even though it is Ruby)

def reverse(x)
  number = x.to_s.gsub(/[^\d]/, '')
  sign  = x.to_s.gsub(/[^\+|\-]/, '')
  reversed_number = (sign + number.to_s.reverse).to_i
  if reversed_number > 2**31 - 1 || reversed_number < -2**31
    0
  else
    reversed_number
  end
end
