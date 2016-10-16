# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this:
#
# P   A   H   N
# A P L S I I G
# Y   I   R
#
# And then read line by line: "PAHNAPLSIIGYIR"
# Write the code that will take a string and make this conversion given a number of rows:
#
# string convert(string text, int nRows);
# convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".

def convert(s, num_rows)
  sa = s.split("")
  h = {}
  count = 1
  down = false
  output_string = ""
  sa.each do |letter|
    if count == num_rows
      down = true
    elsif count == 1
      down = false
    end
    h[count].nil? ? h[count] = letter : h[count] << letter
    (down == true) ? count -= 1 : count += 1
  end
  h.each do |key, value|
    output_string << value
  end
  output_string
end
