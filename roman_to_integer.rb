# Roman to Integer
# Given a roman numeral, convert it to an integer.
#
# Input is guaranteed to be within the range from 1 to 3999.

def roman_to_int(s)
  arr = s.split("")
  arr_dup = []
  letter_hash = { I: 1, IV: 4, V: 5, IX: 9, X: 10, L:50,
                  XL:40, XC: 90, C: 100, CD: 400, D: 500,
                  CM: 900, M: 1000 }

  1.upto(arr.length) do
    if (arr[1] != nil) && (letter_hash.key?((arr[0] + arr[1]).to_sym))
      arr_dup << letter_hash[(arr[0] + arr[1]).to_sym]
      arr.delete_at(0)
      arr.delete_at(0)
      next
    end

    if arr.length > 0
      if letter_hash.key?((arr[0]).to_sym)
        arr_dup << letter_hash[(arr[0]).to_sym]
        arr.delete_at(0)
      end
    end
  end
  arr_dup.reduce(&:+)
end

roman_to_int("XCIV")
roman_to_int("LXVII")
roman_to_int("DCCCXC")
roman_to_int("MD")
roman_to_int("LXXVIII")