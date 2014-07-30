#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that reads in names and birth dates from birth_dates.yml.
# Given a name, it should output when that person's next birthday will be and
# how old they will be.
#
# For example:
#
#   $ 3_birthday_helper_read.rb Alex
#   Alex will be 78 on 2014-10-04
#
# The program should also handle names that are not capitalized:
#
#   $ ruby 3_birthday_helper_read.rb jane
#   Jane will be 56 on 2015-03-27
#
# And reject names that don't have a birth date:
#
#   $ ruby 3_birthday_helper_read.rb Andre3000
#   Unknown birth date for 'Andre3000'
#
# Hint: Represent a birth date as a Time on midnight in UTC.
#
# A few methods that may help you:
#
#   File.read(file_path) → String
#
#     Opens the file_path and returns the contents as a String.
#
#     File.read("file.txt")  #=> "Hello world!"
#
#   YAML.load(str) → Object
#
#     Parses a YAML formatted string and returns the resulting Object.
#
#     YAML.load("--- foo")          #=> "foo"
#     YAML.load("---\nfoo: bar\n")  #=> { "foo" => "bar" }
#
#   Time#strftime("%F") → String
#
#     Returns a Time as a String in YYYY-MM-DD format
#
#     Time.new.utc.strftime("%F")   #=> "2014-07-23"

require 'yaml'

name = ARGV.first

if name.nil?
  puts "Usage: 3_birthday_helper_read.rb NAME"
  exit
end

birth_dates      = File.read("birth_dates.yml")
birth_dates_hash = YAML.load(birth_dates)

unless birth_dates_hash.has_key?(name.capitalize)
    abort "Unknown birth date for #{name.capitalize}"
end

birth_dates_hash.each do |first_name, birth_date|
  if name.capitalize == first_name
    birth_day_string = birth_date.utc.strftime("%F")
    now_string = Time.new.utc.strftime("%F")
    current_year       = now_string[0..3].to_i
    current_month      = now_string[5..6].to_i
    current_day        = now_string[-2..-1].to_i
    birth_year         = birth_day_string[0..3].to_i
    birth_month        = birth_day_string[5..6].to_i
    birth_day          = birth_day_string[-2..-1].to_i
    next_birthday_year = current_year

    if birth_month < current_month
      next_birthday_year = current_year + 1
    elsif birth_month == current_month && birth_day <= current_day
      next_birthday_year = current_year + 1
    end

    next_birthday = "#{next_birthday_year}-#{birth_month}-#{birth_day}"
    puts "#{name.capitalize} will be #{next_birthday_year - birth_year} on #{next_birthday}."
    exit
  end
end
