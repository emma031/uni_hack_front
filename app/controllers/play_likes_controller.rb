class PlayLikesController < ApplicationController
     before_action :authenticate_user!

     def like_toggle
         like = PlayLike.find_by(user_id: current_user.id,
                            play_id: params[:play_id])
    
         if like.nil?
           PlayLike.create(user_id: current_user.id,
                       play_id: params[:play_id])
         else
           like.destroy
         end
    
         redirect_to :back
     end
end
