class DeleteLikeFromInteractions < ActiveRecord::Migration[5.2]
  def change
    remove_column(:interactions, :like, :boolean)
  end
end
