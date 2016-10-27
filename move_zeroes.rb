# Move Zeroes

# Given an array nums, write a function to move all 0's to the
# end of it while maintaining the relative order of the non-zero elements.
#
# For example, given nums = [0, 1, 0, 3, 12], after calling your
# function, nums should be [1, 3, 12, 0, 0].
#
# Note:
# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.

def move_zeroes(nums)
  indices = []
  n = 0
  nums.each_with_index do |number, index|
    if number == 0
      n += 1
      indices << index
    end
  end
  indices.reverse.each do |index|
    nums.delete_at(index)
  end
  n.times do
    nums << 0
  end
  return nums
end

move_zeroes([0, 1, 0, 3, 12])