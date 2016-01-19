require "cucumber/rake/task"

desc "Run the work in progress scenarios"
Cucumber::Rake::Task.new(:wip) do |task|
	task.cucumber_opts = "-t @wip"
end