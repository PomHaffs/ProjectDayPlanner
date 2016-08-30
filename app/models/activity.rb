class Activity < ActiveRecord::Base

  belongs_to :city


  enum group_size: [:single, :together, :family, :single_together, :single_family, ]
  enum budget: [:cheap, :reasonable, :expensive]
  enum theme: [:active, :cultural, :edible]
  enum timeframe: [:AM, :midday, :PM]

end
