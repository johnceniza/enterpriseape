
#JC Note - create delivery method for method Base in class ActionMailer

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address               => 'smtp.sendgrid.net',
  :port                  => '587',
  :authentication        => :plain,
  :user_name             => 'app33330733@heroku.com',
  :password              => 'kpmqixhu',
  :domain                => 'heroku.com',
  :enable_starttls_auto  => true
}