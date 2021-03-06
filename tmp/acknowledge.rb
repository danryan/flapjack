#!/usr/bin/env ruby

require 'redis'
require 'json'

if not id = ARGV.first then
  puts "Usage: acknowledge.rb <id>"
  exit 1
end


redis = Redis.new

redis.hset 'acknowledged', id, 'true'
