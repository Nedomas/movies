class CreateSeens < ActiveRecord::Migration
  def change
    create_table :seens do |t|
      t.integer :user_id
      t.boolean :zjbs
      t.string :movie_id

      t.timestamps
    end
    add_index :seens, :user_id
  end
end
