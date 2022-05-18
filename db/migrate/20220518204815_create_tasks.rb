class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.belongs_to :user
      t.integer :priority
      t.timestamps
    end
  end
end
