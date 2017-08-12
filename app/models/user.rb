class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :auditions
  has_many :plays
  has_many :audition_comments
  
  has_many :play_likes
  has_many :liked_plays, through: :play_likes, source: :play #좋아하는 play게시판 글을 가져옴
  
  def is_like?(play)
    PlayLike.find_by(user_id: self.id, play_id: play.id).present?
  end
  
  
  mount_uploader :avatar, AvatarUploader
end
