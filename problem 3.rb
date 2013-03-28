=begin

Project Euler - Problem #3

	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143?

=end
require 'mathn'
require 'benchmark'

time = Benchmark.realtime do

# Begin Solution
parts = [600_851_475_143]
primes = Array.new

until parts.empty? do
	i = parts.shift
	j = 2
	until i % j == 0 do
		j += 1
	end
	k = i / j
	if k.prime?
		primes.push(k)
	else
		parts.push(k)
	end
end

puts(primes.max)
# End Solution

end
puts("Solved in #{time} seconds.")