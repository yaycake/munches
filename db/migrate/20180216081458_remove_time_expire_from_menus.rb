class RemoveTimeExpireFromMenus < ActiveRecord::Migration[5.0]
  def change
    remove_column :menus, :timeExpire, :datetime
  end
end
