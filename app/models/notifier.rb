class Notifier < ActionMailer::Base

  # Adapted from Acl9 example
  default_url_options[:host] = "penvelo.org"

  def password_reset_instructions(user)
    subject       "Password Reset Instructions"
    from          "Password reset notifier <noreply@penvelo.org>"
    recipients    user.email
    sent_on       Time.now
    body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end

end

