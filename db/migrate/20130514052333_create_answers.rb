class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :project, index: true
      t.references :status, index: true
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
