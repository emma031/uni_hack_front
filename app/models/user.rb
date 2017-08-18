class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :auditions , dependent: :destroy
  has_many :shows , dependent: :destroy
  has_many :plays , dependent: :destroy
  has_many :audition_comments , dependent: :destroy
  has_many :show_comments , dependent: :destroy

  has_many :play_likes , dependent: :destroy
  has_many :liked_plays, through: :play_likes, source: :play , dependent: :destroy #좋아하는 play게시판 글을 가져옴
  
  def is_like?(play)
    PlayLike.find_by(user_id: self.id, play_id: play.id).present?
  end

  has_many :follower_relations, foreign_key: "followed_id", class_name: "Follow"
  has_many :followers, through: :follower_relations, source: :follower

  has_many :following_relations, foreign_key: "follower_id", class_name: "Follow"
  has_many :followings, through: :following_relations, source: :followed
  mount_uploader :avatar, AvatarUploader
end
