module MailerMacros
  def last_email
    #Delayed::Worker.new.work_off
    ActionMailer::Base.deliveries.last
  end
  
  def reset_email
    #Delayed::Job.destroy_all
    ActionMailer::Base.deliveries = []
  end

  def stub_admin_users
    @admin_user = FactoryGirl.build(:admin_user)
    User.stubs(:admin_users).returns([@admin_user])
  end
end
