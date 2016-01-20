class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.text :description
      t.string :type_field
      t.string :value

      t.timestamps null: false
    end
  end
end
