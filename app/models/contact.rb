class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :contact_type
	serialize :properties, Hash

	validate :validate_properties

  def validate_properties
    contact_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end

end
