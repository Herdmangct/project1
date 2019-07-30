# == Schema Information
#
# Table name: ingredients
#
#  id                  :bigint           not null, primary key
#  name                :string           default("")
#  quantity_in_stock   :float            default(0.0)
#  quantity_required   :float            default(0.0)
#  supplier            :string           default("")
#  price               :float            default(0.0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  unit_of_measurement :string           default("unit")
#  atomic_unit         :float            default(0.0)
#  supplier_url        :string           default("")
#  product_name        :string           default("")
#  supplier_email      :string           default("")
#

class Ingredient < ApplicationRecord
  has_many :quantities
end
