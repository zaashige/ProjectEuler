=begin

Project Euler - Problem #1

	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

	Find the sum of all the multiples of 3 or 5 below 1000.

=end

require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
multiples = Array.new

(1..999).each do |i|
	if i % 3 == 0 or i % 5 == 0
		multiples.push(i)
	end
end

answer = multiples.inject(0, :+)

puts(answer)
# End Solution

end
puts("Solved in #{time} seconds.")