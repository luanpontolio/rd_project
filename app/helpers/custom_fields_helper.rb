module CustomFieldsHelper

	def type_field_options_for_select
		options_for_select([
			['Text', :text_field],
			['Text Area', :text_area_tag],
			['Select Box', :select_tag]
		])
	end

end
