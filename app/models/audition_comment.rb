class AuditionComment < ActiveRecord::Base
    belongs_to :user
    belongs_to :audition
end
