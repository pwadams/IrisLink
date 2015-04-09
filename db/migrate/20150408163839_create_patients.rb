class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :doctor_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.datetime :date_of_birth
      t.integer :survey_result

    end
  end
end
