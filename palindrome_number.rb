# Palindrome Number
#
# Determine whether an integer is a palindrome. Do this without extra space.

def is_palindrome(x)
  # Checks size of number for overflow check
  if x > 2**31 - 1 || x < -2**31
    return 0
  # Negative numbers cannot be palindromes
  elsif x < 0
    return false
  else
    reversed = 0
    x_clone = x.abs
    # Trick to return reversed number without using extra space by creating a string
    while x != 0 do
      reversed *= 10
      reversed += x % 10
      x /= 10
    end
    return x_clone == reversed
  end
end
