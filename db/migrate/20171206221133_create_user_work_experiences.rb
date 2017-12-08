class CreateUserWorkExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :user_work_experiences do |t|
      t.belongs_to :user, index: true
      t.string :employer_name
      t.string :location
      t.string :position_title
      t.date :date_to
      t.date :date_from
      t.string :employment_type
      t.text :duties

      t.timestamps
    end
  end
end
