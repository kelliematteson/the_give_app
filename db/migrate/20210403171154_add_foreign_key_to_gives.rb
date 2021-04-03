class AddForeignKeyToGives < ActiveRecord::Migration[6.1]
  def change
    add_column :gives, :client_id, :integer
  end
end
