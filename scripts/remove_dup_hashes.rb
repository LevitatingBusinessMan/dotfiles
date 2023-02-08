#!/usr/bin/ruby
abort "No file given" if ARGV.length < 1
hashes = File.readlines ARGV[0]

hashdic = {}
for hash in hashes
	x = hash.split(":")
	hashdic[x[0]] = x[1..].join(":") if !hashdic[x[0]]
end

for (username,hash) in hashdic
	puts username + ":" + hash
end
