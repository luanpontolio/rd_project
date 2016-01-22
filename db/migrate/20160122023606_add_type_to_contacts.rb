class AddTypeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :contact_type_id, :integer
    add_column :contacts, :properties, :text
  end
end
