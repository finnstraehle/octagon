class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_private
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
