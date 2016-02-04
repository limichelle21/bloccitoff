class Item < ActiveRecord::Base
	belongs_to :user

	# default_scope { order('created_at DESC')}

	validates :body, length: { minimum: 10}, presence: true
	validates :completed, :inclusion => {:in => [true, false]}
	validates :user, presence: true
	


end

