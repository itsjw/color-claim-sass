#!/usr/bin/env ruby
result = `sass scss/color-claim.scss built.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('built.css')
puts "Regular compile worked successfully"

result = `sass test/silent.scss build.silent.css -t compressed --sourcemap=none`
output = File.read('build.silent.css')
raise result unless $?.to_i == 0
puts output
puts File.size?('build.silent.css')
puts File.zero?('build.silent.css')
puts File.empty?('build.silent.css')