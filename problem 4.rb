=begin

Project Euler - Problem #4

	A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

	Find the largest palindrome made from the product of two 3-digit numbers.

=end

require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
products = Array.new

(900..999).each do |i|
	(900..999).each do |j|
		products.push(i * j) if not products.include?(i * j)
	end
end

products.sort!

answer = 0

until not answer == 0 do
	i = products.pop
	answer = i if "#{i}" == "#{i}".reverse
end

puts(answer)
# End Solution

end
puts("Solved in #{time} seconds.")