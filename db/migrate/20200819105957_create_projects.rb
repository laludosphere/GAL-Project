class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.string :tags
      t.integer :teammate
      t.string :code

      t.timestamps
    end
  end
end
