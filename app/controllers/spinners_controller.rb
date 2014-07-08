class SpinnersController < ApplicationController

  def show
    sleep 2
    redirect_to :tasks
  end

end
