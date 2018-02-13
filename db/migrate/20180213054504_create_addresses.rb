class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.references :customer, foreign_key: true
      t.text :street
      t.text :city
      t.text :zipcode
      t.text :district

      t.timestamps
    end
  end
end
