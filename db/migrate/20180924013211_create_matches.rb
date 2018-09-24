class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :user_one_id
      t.integer :user_two_id

      t.timestamps
    end
    add_foreign_key :matches, :users, column: :user_one_id
    add_foreign_key :matches, :users, column: :user_two_id
  end
end
