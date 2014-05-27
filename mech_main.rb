require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get('http://freqn.com')

page.links.each do |link|
  puts link.text
end

page = agent.page.links_with(text: 'News').click
