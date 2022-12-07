#!/usr/bin/ruby
require 'net/http'

body = Net::HTTP.get(URI("https://www.thesaurus.com/e/synonym-of-the-day/"))

r = /<a.*href="https:\/\/www\.thesaurus\.com\/browse\/.+".*>(\S+)<\/a>\s*is another word for\s*<a.*href="https:\/\/www\.thesaurus\.com\/browse\/.+".*>\s*(\S+)\s*<\/a>\s*<\/h2>/

firstword, secondword = r.match(body).captures

system("{
		ACTION=$(dunstify --action='open,Goto thesaurus' '#{firstword} is a synonym of #{secondword}' 'Synonym of the day')
		if [[ $ACTION == 'open' ]]; then
			xdg-open 'https://www.thesaurus.com/e/synonym-of-the-day/'
		fi
} &")
