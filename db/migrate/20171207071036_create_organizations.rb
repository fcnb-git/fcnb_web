class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.integer :user_id      
      t.string :name
      t.string :addressline1
      t.string :addressline2
      t.string :addressline3

      t.timestamps
    end
  end
end
