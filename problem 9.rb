=begin

Project Euler - Problem #9

	A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

	a^2 + b^2 = c^2
	For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

	There exists exactly one Pythagorean triplet for which a + b + c = 1000.
	Find the product abc.

=end

# OPTIMIZE THIS
require 'benchmark'
time = Benchmark.realtime do

# Begin Solution
triplet = Array.new
(100..1000).each do |i|
	(100..1000).each do |j|
		(100..1000).each do |k|
			triplet << i << j << k if (i ** 2) + (j ** 2) == (k ** 2) and i + j + k == 1000
			break unless triplet.empty?
		end
	end
end

puts(triplet.reduce(1, :*))
# End Solution

end
puts("Solved in #{time} seconds.")