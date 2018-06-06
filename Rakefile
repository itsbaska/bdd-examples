require 'rake'

desc "Runs Cucumber tests"
task :run_cukes do
  puts "Preparing to run Cucumber tests"
  exec "rspec && cucumber -r step_definitions/location_steps.rb -r step_definitions/shout_steps.rb"
end