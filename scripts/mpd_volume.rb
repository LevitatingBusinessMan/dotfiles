#!/usr/bin/ruby

HOST = "192.168.1.103"
PORT = 6600

def err str
	STDERR.puts str
	`notify-send mpd_volume.rb "#{str}" -u critical`
	raise
end

require 'socket'

mpd = TCPSocket.new HOST, PORT

first_line = mpd.gets
if ! first_line.start_with? "OK MPD"
	abort err "Unexpected response: #{first_line}"
end

loop do
	begin
		mpd.recv_nonblock 1000, exception: false
		mpd.puts "idle mixer"

		data = mpd.recv 1000
		if data != "changed: mixer\nOK\n"
			err "Unexpected response: #{data}"
		end

		mpd.puts "status"

		res  = ""
		suc = false
		# can't mix buffered with unbuffered methods
		for line in mpd.recv(1000).split "\n"
			res << line+"\n"
			if line.start_with? "volume"
				volume = line.split(": ")[1].to_i
				puts "New volume: #{volume}"
				File.write "/tmp/mpd_volume", volume
				suc = true
				break
			end
		end

		err "Didn't receive volume from response: #{res}" if !suc

	rescue Exception => e
		err "Some exception occured: #{e.inspect}"
	end

end
