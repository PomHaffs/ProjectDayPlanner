# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  city        :string
#  name        :string
#  description :string
#  group_size  :integer          default(0)
#  budget      :integer          default(0)
#  theme       :integer          default(0)
#  timeframe   :integer          default(0)
#  link        :text
#  latitude    :integer
#  longitude   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
