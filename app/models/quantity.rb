# == Schema Information
#
# Table name: quantities
#
#  id                    :bigint           not null, primary key
#  meal_id               :bigint
#  ingredient_id         :bigint
#  measurement           :float
#  unit_of_measurement   :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  users_ingredient_name :string
#

class Quantity < ApplicationRecord
  belongs_to :meal, :optional => true
  belongs_to :ingredient, :optional => true
end
