class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :status
      t.string :type
      t.string :description
      t.string :age
      t.string :size
      t.float :height
      t.string :contexture
      t.string :raza
      t.string :colors
      t.string :skin
      t.boolean :medical
      t.string :med_detail
      t.string :sex
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
