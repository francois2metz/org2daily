require('org-ruby')

content = File.read('daily.org', :encoding => 'utf-8')

parser = Orgmode::Parser.new(content)

def find_title(parser)
  title = ""
  parser.header_lines.each do |line|
    if line.to_s =~ /^\#\+TITLE/
      title = line.to_s.gsub(/^\#\+TITLE:/, '').strip!
      break
    end
  end
  title
end

title = find_title(parser)

parser.headlines.each_with_index do |headline, index|
  puts "#{title} ##{index}"
  puts headline.body_lines[1..headline.body_lines.length].join("\n")
  puts "-" * 40
end
