CHARS = (32..126).map &:chr

for x in CHARS.permutation(4)
	puts "nali" + x.join
end
`