class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :porject_description
      t.boolean :on_progress
      t.date :starts_on

      t.timestamps
    end
  end
end
