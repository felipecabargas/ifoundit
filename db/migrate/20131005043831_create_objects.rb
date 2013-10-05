class CreateObjects < ActiveRecord::Migration
  def change
    create_table :objects do |t|
      t.string :status
      t.string :lat
      t.string :long
      t.text :description
      t.integer :user_id
      
      t.timestamps
    end
  end
end
