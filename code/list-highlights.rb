#!/usr/bin/env ruby

require 'kindle_highlights'

print("Connecting with user: "+ENV['AMAZON_USER']+"\n")

kindle = KindleHighlights::Client.new(email_address: ENV['AMAZON_USER'], password: ENV['AMAZON_PASSWORD'])

highlights = kindle.highlights_for(ENV['AMAZON_BOOK_ID'])

highlights.each do |highlight|
    print(highlight[:startLocation]+": "+highlight[:highlight]+"\n")
end
