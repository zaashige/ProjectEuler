require 'mathn'

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