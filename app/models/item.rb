class Item < ActiveRecord::Base
	belongs_to :user

	default_scope { order('rank DESC')}

	validates :body, length: { minimum: 10}, presence: true
	validates :completed, presence: true

	

end

