#!/usr/bin/env/ruby 

require "open-uri"
require "net/http"
require "colorize"

system("cls")
system("clear")
print "XSS SCAN".red

list = ARGV[0]
if (ARGV.lenght < 1) then 
    def ban()
        puts "USAGE ./x3scan.rb sites.txt"
        exit
    end 
    ban()
end
File.open("#{list}", "r").each do |target|
    #payloads
    payload =["%22%3EXXTES%3C","%2F%22%3EXXTES%3C","%2522%253EXXTES%253C","%3Ca%20href%3D%22google.com%22%3EXXTES%3C%2Fa%3E"]
    payload.each do |i|
    result = open("#{target}#{i}").read
    resposne = Net::HTTP.get_response(URI.parse("#{target}#{i}"))
    if (response.code != "200") then
        puts "#{target} May Be Vulnerable".yellow
        break
    end

    if (result[">XXTES<"].nil?)then
        puts "#{target} Not vulnerable to xss"
    else 
        puts "#{target} XSS DETECTED"
        break 
    end
end




