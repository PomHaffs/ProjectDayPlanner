class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |a|
      a.string    :city
      a.string    :name
      a.string    :description
      a.integer   :group_size, default: 0
      a.integer   :budget, default: 0
      a.integer   :theme, default: 0
      a.integer   :timeframe, default: 0
      a.text      :link
      a.integer   :latitude
      a.integer   :longitude

      a.timestamps null: false
    end
  end
end
