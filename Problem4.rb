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