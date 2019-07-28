# == Schema Information
#
# Table name: ingredients
#
#  id                :bigint           not null, primary key
#  name              :string
#  quantity_in_stock :float
#  quantity_required :float
#  supplier          :string
#  price             :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Ingredient < ApplicationRecord
  has_and_belongs_to_many :meals
end
