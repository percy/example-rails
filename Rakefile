# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

PERCY_AGENT_BIN = File.join(File.dirname(__FILE__), './node_modules/.bin/percy')

desc 'Run all tests and upload snapshots'
task :snapshots do
  unless File.exist?(PERCY_AGENT_BIN)
    abort "Could not find #{PERCY_AGENT_BIN}. Please run npm install and try again."
  end
  sh %( #{PERCY_AGENT_BIN} exec -- bundle exec rake test )
end
