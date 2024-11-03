class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.integer :student_id
      t.string :start_date
      t.string :end_date
      t.string :job_title
      t.string :company_name
      t.string :details

      t.timestamps
    end
  end
end
