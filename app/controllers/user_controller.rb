class UserController < ApplicationController
  
  before_action :setUser, only: [:findUser]
  before_action :setUsers, only: [:index]
  
  def index
    render json: {
      values: @users,
      message: "Success!"
    }, status: 200
  end
  
  def addUser
    
  end
  
  def findUser
    render json: {
      values: @user,
      message: "Success!"
    }, status: 200
  end
  
  private
  def setUser
    @user = User.new
    user.id = 1
    user.name = "User 1"
    user.address = "Address User 1"
  end
  
  def setUsers
    @users = []
    user1 = User.new
    user1.id = 1
    user1.name = "User 1"
    user1.address = "Address User 1"
    
    user2 = User.new
    user2.id = 2
    user2.name = "User 2"
    user2.address = "Address User 2"
    
    @users << user1
    @users << user2
  end
  
end