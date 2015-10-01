class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = deserialize(create: true)
    save_or_error! @user
  end

  def update
    # TODO: authenticate & authorize user
    @user = deserialize
    validate_id(@user) || return
    save_or_error! @user
  end

  def destroy
    # TODO: allow users to delete their accounts
  end
end
