class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account created successfully!"
      # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_now
        #return to user 
      redirect_to @user
    else
      flash[:danger] = "Oops! There's been a problem!"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    #debugger
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
