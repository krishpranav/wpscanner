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
    