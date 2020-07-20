# String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def compress(initial_string)
  count = 1
  answer = initial_string[0]
  initial_string.split('').each_cons(2) do |x, y|
    if x == y
      count += 1
    else
      answer << "#{count}#{y}"
      count = 1
    end
  end
  answer << "#{count}"
  answer
end

puts "aaabbccaabcc -> #{compress('aaabbccaabcc')}"
puts "aabcccccaaa -> #{compress('aabcccccaaa')}"