class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :status
      t.string :lat
      t.string :long
      t.string :species
      t.string :generi
      t.string :collar
      t.string :color
      t.text :description
      t.integer :user_id
      
      t.timestamps
    end
  end
end