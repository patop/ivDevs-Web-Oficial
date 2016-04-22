class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :tag
	belongs_to :category
	enum type: [:serie, :notice]  
end
