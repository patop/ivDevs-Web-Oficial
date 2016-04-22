class UserRanking < ActiveRecord::Base
  belongs_to :ranking
  belongs_to :user
end
