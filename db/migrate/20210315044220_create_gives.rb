class CreateGives < ActiveRecord::Migration[6.1]
  def change
    create_table :gives do |t|
          t.string :give_name
          t.text :give_description
          t.string :give_image
          t.string :giver

      t.timestamps
    end
  end
end
