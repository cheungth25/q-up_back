class CreateUserLines < ActiveRecord::Migration[5.1]
  def change
    create_table :user_lines do |t|
      t.integer :user_id
      t.integer :line_id

      t.timestamps
    end
  end
end
