class ChangePetsTypes < ActiveRecord::Migration[5.2]
  def up
  change_table :pets do |t|
    t.change :municipal_record, :string
    t.change :vaccines, :string
  end
end

def down
  change_table :pets do |t|
    t.change :municipal_record, :boolean
    t.change :vaccines, :boolean
  end
end
end
