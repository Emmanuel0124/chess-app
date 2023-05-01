class UsersController < ApplicationController
  def new
    @user = User.new
    render template: "users/new"
  end


  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end 

  def edit
    @game = Game.find_by(id: params[:id])
    render :edit
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    redirect_to "/games"
  end

end 
    
