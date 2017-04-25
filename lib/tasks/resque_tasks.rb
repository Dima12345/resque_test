require 'resque/tasks'  
require 'resque/scheduler/tasks'
# require 'resque_scheduler/tasks'

task "resque:setup" => :environment  

namespace :resque do
 desc 'setup'
 task :setup do
    require 'resque'
    # require 'resque_scheduler'
    require 'resque/scheduler'      

    Resque.redis = '127.0.0.1:6379'

    Resque.schedule = YAML.load_file("#{Rails.root}/config/resque_schedule.yml")
 end
end