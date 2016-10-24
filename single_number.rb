# Given an array of integers, every element
# appears twice except for one. Find that single one.
# Note:
# Your algorithm should have a linear runtime complexity.
# Could you implement it without using extra memory?

def single_number(nums)
  h = Hash.new(0)
  arr = [-1]
  arr.map { |n| h[n] += 1 }
  h.key(1)
end
