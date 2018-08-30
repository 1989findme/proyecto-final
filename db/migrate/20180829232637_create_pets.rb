class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.json :photo
      t.string :name
      t.string :specie
      t.string :breed
      t.string :municipal_record
      t.string :vaccines
      t.boolean :sex
      t.integer :size
      t.integer :age

      t.timestamps
    end
  end
end
