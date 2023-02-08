puts "Levitatings IRB math mode"

include Math

class Integer
	# Make integer division default
	def / snd
		raise "divided by 0" if snd == 0
		return Rational(self,snd) if snd.is_a? Rational
		self.to_f / snd
	end
	def !
		fac self
	end
end

def fac n
	raise "Factorial of negative integer is undefined behavior" if n < 0
	(1..n).inject(:*) || 1
end

def binominal m, n
	(fac m) / ((fac n) * (fac m-n))
end

#Alternative for ^L
def clear
	system 'clear'
end

IRB.conf[:BACK_TRACE_LIMIT] = -100
