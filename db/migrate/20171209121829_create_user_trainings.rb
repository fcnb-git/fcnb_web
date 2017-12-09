class CreateUserTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_trainings do |t|
      t.belongs_to :user, index: true
      t.string :description
      t.date :date_started
      t.date :date_completed
      t.string :note

      t.timestamps
    end
  end
end
