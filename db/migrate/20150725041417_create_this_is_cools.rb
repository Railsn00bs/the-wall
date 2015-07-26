class CreateThisIsCools < ActiveRecord::Migration
  def change
    create_table :this_is_cools do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
