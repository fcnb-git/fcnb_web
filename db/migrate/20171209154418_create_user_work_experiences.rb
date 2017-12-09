class CreateUserWorkExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :user_work_experiences do |t|
      t.belongs_to :user, index: true
      t.string :company_name
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :industry
      t.string :position
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
