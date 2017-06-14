#!/usr/bin/env ruby
result = `sass scss/color-claim.scss built.css`
raise result unless $?.to_i == 0
raise "When compiled the module should output some CSS" unless File.exists?('built.css')
puts "Regular compile worked successfully"

result = `sass test/silent.scss build.silent.css --style compressed`
raise result unless $?.to_i == 0
raise "When $use-silent-classes is set to true the module should not output any CSS" unless File.size('build.silent.css') == 0
puts "Silent sass compiled successfully"