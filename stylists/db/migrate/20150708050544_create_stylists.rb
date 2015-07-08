class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.text :name
      t.text :email
      t.text :password

      t.timestamps null: false
    end
  end
end
