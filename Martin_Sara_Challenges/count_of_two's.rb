# Write a function takes in a single integer and counts the number of 2's that appear in all the numbers between 0 and the given argument. The given number should be inclusive.

# EXAMPLE:

# Input: 25

# Output: 9 (2, 12, 20, 21, 33, 23, 24, 25. 22 counts for two 2's)

# Include at least two test cases to prove it works.


def count_twos(int)
  count = 0
  for x in 0..int
    if x.to_s.include?("2") 
      count += x.to_s.chars.count("2")
    end
  end
  count
end

p count_twos(25)