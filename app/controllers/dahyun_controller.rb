class DahyunController < ApplicationController
  def show
    # render :layout => 'pagination'
  end
  
  def play
    @play = Play.all

    # render :layout => 'pagination'
  end
  
  def rank
    # render :layout => 'pagination'
  end
  
  def audition
    @auditions = Audition.all
    # render :layout => 'pagination'
  end

  
  def main
    
  end
end
