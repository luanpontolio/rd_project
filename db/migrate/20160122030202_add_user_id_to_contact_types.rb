class AddUserIdToContactTypes < ActiveRecord::Migration
  def change
    add_column :contact_types, :user_id, :integer
  end
end
