#!/usr/bin/env ruby

require 'kindle_highlights'

print("Connecting with user: "+ENV['AMAZON_USER']+", "+ENV['AMAZON_PASSWORD']+"\n")

kindle = KindleHighlights::Client.new(email_address: ENV['AMAZON_USER'], password: ENV['AMAZON_PASSWORD'])

books = kindle.books

books.each do |key, title|
  print(key+": "+title)
end