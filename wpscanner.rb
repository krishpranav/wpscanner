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
    print "track>> : ".red
    $option = gets.chomp