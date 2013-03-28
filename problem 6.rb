=begin

Project Euler - Problem #6

	The sum of the squares of the first ten natural numbers is,

	1^2 + 2^2 + ... + 10^2 = 385
	The square of the sum of the first ten natural numbers is,

	(1 + 2 + ... + 10)^2 = 552 = 3025
	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
sum_of_squares = 0
(1..100).each do |i|
	sum_of_squares += i ** 2
end

square_of_sum = (1..100).reduce(:+) ** 2

puts(square_of_sum - sum_of_squares)
# End Solution

end
puts("Solved in #{time} seconds.")