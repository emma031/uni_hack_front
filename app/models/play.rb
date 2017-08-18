class Play < ActiveRecord::Base
    belongs_to :user
    has_many :play_likes
    has_many :liked_users, through: :play_likes, source: :user #play를 좋아하는 user집합
    
    mount_uploader :image, PlayImageUploader
    mount_uploader :songurl, SongurlUploader
    paginates_per 8
end
