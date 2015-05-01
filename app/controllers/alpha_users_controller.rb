class AlphaUsersController < ApplicationController

	def create 
    @alpha_user = AlphaUser.new(alpha_user_params)
    @alpha_user.save

    AdminMailer.mail_admin(@alpha_user).deliver_now
    render "static_pages/index"
	end

  private

    def alpha_user_params
      params.require(:alpha_user).permit(:name, :email)
    end

end
