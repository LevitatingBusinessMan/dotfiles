#!/usr/bin/ruby
require 'osc-ruby'
require "readline"


HOST = ARGV[0] || "localhost"
PORT = ARGV[1] || 3333

puts "Using #{HOST}:#{PORT}"
@client = OSC::Client.new(HOST,PORT)

while msg = Readline.readline("> ", true)
	addr, *arg = msg.split " "

	puts "Sending \e[36m#{addr}\e[0m \e[92m#{arg.join(" ")}\e[0m"

	@client.send(OSC::Message.new(addr, *arg))
end
