class UsersController < ApplicationController

  # /users/new
  def new
    @user = User.new
  end
  
  # create
  def create
    # post 
    @user = User.create(params)
  end

  # index
  # /users
  def index
    @users = User.all
  end
  
  # show
  # user/:id
  def show
    @user = User.find params[:id]
  end  

  # edit
  # user/:id/edit
  def edit
    @user = User.find params[:id]
  end

  # update
  # user/:id
  def update
    # patch
    redirect_to '/user/@{params[:id]}'
  end
  
  # destroy
  # user/:id/delete
  def destroy
    @user = User.find params[:id]
    @user.delete
    redirect_to '/users'
  end

end



# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
