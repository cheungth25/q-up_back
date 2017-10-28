class CreateLines < ActiveRecord::Migration[5.1]
  def change
    create_table :lines do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
