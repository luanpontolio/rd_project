class ContactType < ActiveRecord::Base
	has_many :fields, :class_name => "ContactField"
	accepts_nested_attributes_for :fields, allow_destroy: true
end
