=begin

Project Euler - Problem #5

	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

require 'mathn'
require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
all_factors = Hash.new(0)

(2..20).each do |i|
	# Gets prime factors of i
	factors = Array.new
	checking = i
	
	until checking.prime?
		divisor = 2
		until checking % divisor == 0 do
			divisor += 1
		end
		factors.push(divisor)
		checking = checking / divisor
	end
	factors.push(checking)
	
	# Adds new factors to all_factors
	factor_counts = Hash.new(0)
	factors.each do |j|
		factor_counts[j] += 1
	end
	factor_counts.each do |k, v|
		all_factors[k] = (v > all_factors[k] ? v : all_factors[k])
	end
	puts(all_factors)
end

answer = 1

all_factors.each do |k, v|
	answer = answer * (k ** v)
end

puts(answer)
# End Solution

end
puts("Solved in #{time} seconds.")