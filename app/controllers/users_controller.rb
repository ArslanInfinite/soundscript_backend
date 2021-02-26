class UsersController < ApplicationController
  def create    
   sound = Sound.find_by(title: "grand_piano")  
    user =  User.create!({username: params[:registerData], sound_id: sound.id})
    if !user 
      render :json => {:response => 'Username taken' },:status => 420 
    end
    json_return = {user: user, sound: sound}
    render json: json_return
  end

  def login
    user = User.find_by(username: params[:loginData])
    
    if !user 
      render :json => {:response => 'User not in Database' },:status => 404 
    end
    sound = Sound.find(user.sound_id)  
    json_return = {user: user, sound: sound}
    render json: json_return
  end

  def update
    user = User.update(params[:id], sound_id: params[:soundId])
    sound = Sound.find(user.sound_id)  
    render json: sound
  end

  def destroy
    User.destroy(params[:id])
    render :json => {:response => 'success' },:status => 200 
  end
end
