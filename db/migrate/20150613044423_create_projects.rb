class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.text :contact
      t.string :url

      t.timestamps null: false
    end
  end
end
