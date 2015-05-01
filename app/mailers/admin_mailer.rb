class AdminMailer < ApplicationMailer
	default from: 'jpbullalayao@gmail.com'

  def mail_admin(alpha_user)
    @alpha_user = alpha_user
    mail(to: 'jpbullalayao@gmail.com', subject: '[MyCircle] New user has subscribed!')
  end
end
