multiples = Array.new

(1..999).each do |i|
	if i % 3 == 0 or i % 5 == 0
		multiples.push(i)
	end
end

answer = 0

multiples.each do |i|
	answer += i
end

puts(answer)