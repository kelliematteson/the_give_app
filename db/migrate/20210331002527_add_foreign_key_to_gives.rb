class AddForeignKeyToGives < ActiveRecord::Migration[6.1]
  def change
    add_column :gives, :user_id, :integer
  end
end
