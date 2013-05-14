class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :key

      t.timestamps
    end
  end
end
