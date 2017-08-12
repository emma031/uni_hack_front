class DahyunController < ApplicationController
    before_action :authenticate_user!, only: [:play]

    def audition
        @auditions = Audition.all.reverse
    end
    
    def main
        
    end
    
    def mypage
        
    end
    
    def play
        @play = Play.all
    end
    
    def rank
        @user = User.all
    end
    
    def show
    
    end
end