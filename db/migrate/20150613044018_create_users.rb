class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :about_me
      t.string :github_username

      t.timestamps null: false
    end
  end
end
