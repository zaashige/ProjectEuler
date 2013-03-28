fibonacci = [1, 2]

until fibonacci[-1] > 4_000_000 do 
	fibonacci.push(fibonacci[-1] + fibonacci[-2])
end
fibonacci.delete_at(-1) # loop stops when the last term is GREATER than 4_000_000

answer = 0

fibonacci.each do |i|
	answer += i if i % 2 == 0
end

puts(answer)