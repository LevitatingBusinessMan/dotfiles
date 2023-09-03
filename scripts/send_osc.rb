#!/usr/bin/ruby
require 'osc-ruby'
require "readline"


HOST = ARGV[0] || "192.168.1.17"
PORT = ARGV[1] || 3333

puts "Using #{HOST}:#{PORT}"
@client = OSC::Client.new(HOST,PORT)

while msg = Readline.readline("> ", true)
	addr, *arg = msg.split " "

	puts "Sending \e[36m#{addr}\e[0m \e[92m#{arg.join(" ")}\e[0m"

	arg.map(&:to_i)

	@client.send( OSC::Message.new(addr, *arg))
end
