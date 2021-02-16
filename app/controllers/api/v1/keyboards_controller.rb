class Api::V1::KeyboardsController < ApplicationController

  def index 
    keyboards = Keyboard.all 
    render json: KeyboardSerializer.new(keyboards)
  end

end
