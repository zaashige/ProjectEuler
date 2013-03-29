=begin

Project Euler - Problem #10

	The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

	Find the sum of all the primes below two million.

=end

require 'mathn'
require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
	puts(Prime.each(2_000_000).reduce(:+))
# End Solution

end
puts("Solved in #{time} seconds.")