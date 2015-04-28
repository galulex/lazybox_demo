class SpinnersController < ApplicationController
  def show
    sleep 3
    redirect_to root_path
  end
end
