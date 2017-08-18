class DahyunController < ApplicationController
    before_action :authenticate_user!, only: [:play, :audition, :show]

    def audition
        @auditions = Audition.all.reverse
        #@auditions = Audition.order("created_at DESC").page params[:page]
         @play = Play.all
    end
    
    def main
         @play = Play.all
    end
    
    def mypage
         @play = Play.all
    end
    
    def play
        @plays = Play.all.reverse
        #@plays = Play.order("created_at DESC").page params[:page]
    end
    
    def rank
        @user = User.all
    end
    
    def show
        @show = Show.all.reverse
        #@show = Show.order("created_at DESC").page params[:page]
    end
    
    def new_play
        @play = Play.all
    end
    
    def mypage
        @mypage = mypage.all.reverse
        #@mypage = mypage.order("created_at DESC").page params[:page]
    end
end