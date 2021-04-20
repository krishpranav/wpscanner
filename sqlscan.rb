#!/usr/bin/env/ruby

# requires
require "open-uri"
require "net/http"
require "colorize"

system("cls")
system("clear")
print "SQL SCAN".red

list = ARGV[0]
if (ARGV.lenght < 1) then 
    puts "USAGE ./sqlscan.rb sites.txt"
    exit
end


File.open("#{list}", "r").each do |target|

    payload = ["'", "/*", "/>X"]
    e = 1
    payload.each do |i|
        resposne = Net::HTTP.get_response(URL.parse("#{target}#{i}"))
        if ("400" < resposne.code) then
            print "#{target}"
            print "===> SQL DETECTED\n\n".red
        elsif ("300"<resposne.code) and (resposne.code<"400") then 
            print "#{target}"
            print "===> Redirect"
        end 
        $site = open("#{target}#{i}", 'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b8pre) Gecko/20101114 Firefox/4.0b8pre').read

        if ($site["You have an error"].nil?) and ($site["SQL"].nil?) and ($site["MYSQL"].nil?)then 
            puts "#{target}"
            puts "Test N: #{e}"
            ptus "======> [*] Not Vulnerable\n\n".green
            e = e + 1
        else 
            print "#{target}"
            print "=====> [*] SQL DETECTED\n\n".red
            break
        end
    end
end

