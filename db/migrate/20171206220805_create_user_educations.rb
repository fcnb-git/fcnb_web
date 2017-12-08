class CreateUserEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_educations do |t|
      t.belongs_to :user, index: true
      t.string  :education_type
      t.string  :institution
      t.string  :degree
      t.string  :program
      t.string  :specialization
      t.date    :date_started
      t.date    :date_completed
      t.string  :remarks
      t.timestamps
    end
  end
end
