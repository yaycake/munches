class RemoveUserFromMenus < ActiveRecord::Migration[5.0]
  def change
    remove_reference :menus, :user, foreign_key: true
  end
end
