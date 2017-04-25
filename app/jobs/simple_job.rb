class SimpleJob < ActiveJob::Base
  @queue = :simple

  def self.perform
    puts "Job is done"
    UserMailer.welcome_email.deliver_now
  end
end
