require "rubygems"
require "rake"

desc "Run those specs"
task :spec do
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new do |task|
    task.pattern = "spec/**/*_spec.rb"
  end
end
