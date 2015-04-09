class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :credentials
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: "true"
    end
  end
end
