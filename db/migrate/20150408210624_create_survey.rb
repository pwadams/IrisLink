class CreateSurvey < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6
      t.integer :q7
      t.integer :q8
      t.integer :q9
      t.integer :q10
      t.integer :q11
      t.integer :q12
      t.integer :q13
      t.integer :q14
      t.integer :q15
      t.integer :q16
      t.integer :q17
      t.integer :q18
      t.integer :patient_id

    end
  end
end
