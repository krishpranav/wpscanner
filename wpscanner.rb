#!/usr/bin/env/ruby

# requires
require "rest-client"
require "nokogiri"
require "colorize"
require "open-uri"
require "net/http"
require "socket"
require 'shodan'

system("cls")
system("clear")


puts "WPSCANNER".red

while true do
    print ">> : ".red
    $option = gets.chomp
    if $option == "exit" then
        break 
    end
    
    if $option == "help" then 

        puts

        puts "[site] MAKE YOUR TARGET".green
        puts "[help] show this MESSAGE".green
        puts "[targ] Search targets".green
        puts "[exit] exit the script".green
        puts "[uptd] Update wpscanner".green
        puts "[anon] Run Anonymous Mode".green
        puts "[info] About wpscanner".green
        puts
    end

    if $option == "anon" then
        puts
        puts "*** ANONSURF STARTING ***".green.on_blue
        system("service tor start")
        system("anonsurf start")
        puts "Press 99 to stop anonsurf"
    end
    if $option == "99" then
        system("anonsurf stop service")
        puts "anon surf stoped!"
    end
    
    if $option == "targ" then
        puts "[1] Search target shodan".blue
        puts "[2] Shodan Port Scanner".blue 
    end 
    
    if $option == "2" then 
        print "IP: ".green
        targetportscan = gets.chomp
        $sourceshoadan = open("https://www.shodan.io/host/#{targetportscan}").read
        f = File.open("#{targetportscan}.htm", "W")
        f.puts $sourceshoadan
        f.close
        print "[+}".green
        system("grep -a 'Ports open:'  #{targetportscan}.htm | cut -d '=' -f 3 | cut -d '/' -f 1")
    end 
  
    if $option == "1" then
      def ban()
        puts "TARGET"
      end
      ban()
      puts "TARGET"
      puts "Before you can running make sure you have putted your shodan api key on api.txt"
      apii = open("api.txt")
      my_shodan_api = apii.read 
      print "Search : "
      target = gets.chomp
      api = Shodan::Shodan.new("#{my_shodan_api}")
      result = api.search("#{target}")
      file = File.open("result.txt", "w") do |f2|
        system("clear")
        bann()
        puts "--------"
        puts host['ip_str']
        f2.puts host['ip_str']
        puts "--------"
      }
      system("clear")
      bann()
      puts "[+] SUCCESS!! Target saved in result.txt".green
      system("pause>nul")
    end
end

