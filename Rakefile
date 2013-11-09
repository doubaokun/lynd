require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--color"
end

task :default => :spec

def run_command(cmd)
  cmdrun = IO.popen(cmd)
  output = cmdrun.read
  cmdrun.close
  if $?.to_i > 0
    puts "#{cmd} failed with #{output}"
    exit! 2
  end
  puts "OK: #{cmd}"
end

task :build_jar do
  run_command("/usr/bin/env warble jar")
end

