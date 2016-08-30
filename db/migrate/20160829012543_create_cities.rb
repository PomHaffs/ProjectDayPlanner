class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |c|
      c.string    :name
      c.integer   :latitude
      c.integer   :longitude

      c.timestamps null: false
    end
  end
end
