class DahyunController < ApplicationController
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
        
    end
    
    def show
    
    end
end