class CreateUserCertifications < ActiveRecord::Migration[5.1]
  def change
    create_table :user_certifications do |t|
      t.belongs_to :user, index: true
      t.string :description
      t.date :date_issued
      t.date :date_expiry

      t.timestamps
    end
  end
end
