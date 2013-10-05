class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :status
      t.string :address
      t.float :lat
      t.float :long
      t.text :description
      t.integer :user_id
      
      t.timestamps
    end
  end
end
