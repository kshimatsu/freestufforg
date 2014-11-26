class AddConfirmPostingToItem < ActiveRecord::Migration
  def change
    add_column :items, :confirm_posting, :boolean
  end
end
