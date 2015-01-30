require "bundler/gem_tasks"

require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.libs << 'lib/double_round_robin_schedule.rb'
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end
 
task :default => :test