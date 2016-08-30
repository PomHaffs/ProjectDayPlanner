class AddCityIdToActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :city
    add_column :activities, :city_id, :integer
  end
end
