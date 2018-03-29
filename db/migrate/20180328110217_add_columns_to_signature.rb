class AddColumnsToSignature < ActiveRecord::Migration[5.0]
  def change
    add_column :signatures, :timestamp, :string
    add_column :signatures, :v, :string
    add_column :signatures, :source_id, :string
    add_column :signatures, :shop_no, :string
    add_column :signatures, :format, :string
    add_column :signatures, :signature, :string
    add_column :signatures, :order_id, :string
  end
end
