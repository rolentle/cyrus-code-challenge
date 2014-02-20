$:.unshift File.expand_path("./../lib", __FILE__)
require 'rake/testtask'

require './lib/cyrus_app'

Rake::TestTask.new do |t|
  require 'bundler'
  Bundler.require
  t.pattern = "test/**/*_test.rb"
end

namespace :cyrus do
  desc "pipe.txt, comma.txt, and space.txt sorted by gender (females before males) then by last name ascending."
  task :output1 do
  puts  CyrusApp::Runner.new.output1
  end

  desc "pipe.txt, comma.txt, and space.txt sorted by birth date, ascending."
  task :output2 do
  puts  CyrusApp::Runner.new.output2
  end
end


task default: :test
