class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :photo
      t.text :bio
      t.integer :posts_counter, default: 0

      t.timestamps # ? auto-populates created_at and updated_at
    end
  end
end
