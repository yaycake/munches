class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.text :name
      t.text :description
      t.datetime :timeAvailable
      t.datetime :timeExpire
      t.string :daysAvailable

      t.timestamps
    end
  end
end
