# Beats 18.54% of Ruby submissions.  Need to improve
def two_sum(nums, target)
  numbers_hash = {}
  nums.each_with_index do |number, index|
    numbers_hash[index] = number
    hash_key = ((numbers_hash.select { |k,v| v == (target - number) }.keys) - [index])
    hash_key.empty? ? false : (return [hash_key, index].flatten)
  end
  return "Couldn't find target value"
end
