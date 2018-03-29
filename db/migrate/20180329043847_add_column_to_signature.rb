class AddColumnToSignature < ActiveRecord::Migration[5.0]
  def change
    add_column :signatures, :body, :string
  end
end
