class AddItemIdToMedium < ActiveRecord::Migration
  def change
    add_column :media, :item_id, :integer
  end
end
