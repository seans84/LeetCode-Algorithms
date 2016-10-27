# Ransom Note
#
# Given an arbitrary ransom note string and another string containing
# letters from all the magazines, write a function that will return
# true if the ransom note can be constructed from the magazines ;
# otherwise, it will return false.
#
# Each letter in the magazine string can only be used once in your ransom note.
#
# Note:
# You may assume that both strings contain only lowercase letters.

def can_construct(ransom_note, magazine)
  ransom_array = ransom_note.split("")
  magazine_array = magazine.split("")

  ransom_array.each do |letter|
    if magazine_array.include?(letter) == false
      return false
    else
      magazine_array.delete_at(magazine_array.index(letter))
    end
  end
  true
end

can_construct("aa", "aab")
can_construct("aa", "ab")