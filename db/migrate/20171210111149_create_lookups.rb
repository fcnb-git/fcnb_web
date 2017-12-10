class CreateLookups < ActiveRecord::Migration[5.1]
  def change
    create_table :lookups do |t|
      t.string :category
      t.string :dropdown_value
      t.integer :order_value

      t.timestamps
    end
  end
end
