# require 'resque/tasks'
# require 'resque/scheduler/tasks'

# desc 'pool_setup'
# task 'resque:pool:setup' do
#   require 'resque-scheduler'
#   require 'resque/pool'
#   ActiveRecord::Base.connection.disconnect!
#   # and re-open them in the resque worker parent
#   Resque::Pool.after_prefork do |job|
#     ActiveRecord::Base.establish_connection
#   end
# end
