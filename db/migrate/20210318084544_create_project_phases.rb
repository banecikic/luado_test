class CreateProjectPhases < ActiveRecord::Migration[5.2]
  def change
    create_table :project_phases do |t|
      t.string :job_title
      t.integer :price
      t.string :timeframe
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
