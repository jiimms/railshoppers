class UsersController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy, :show]
  def Index
  	@users=User.all
  end

  def show
  end

  def new
  	@user=User.new
  end

  def create
  	@user=User.new(user_params)
  	if @user.save
  		redirect_to @user, notice: "account created" 
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @user.update(user_params) 
  		redirect_to @user, notice: "account updated"
  	else
  		render 'edit'
  	end
  end

  private

  def find_user
  	@user=User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name, :email, :year_of_study,
  				 :brief_intro, :achievements, :rgsoc_reason, 
  				 :projects, :languages, :fav_food)
  end
end
