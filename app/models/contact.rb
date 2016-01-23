class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :contact_type
	serialize :properties, Hash
end
