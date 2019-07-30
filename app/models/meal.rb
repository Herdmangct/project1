# == Schema Information
#
# Table name: meals
#
#  id                :bigint           not null, primary key
#  name              :string
#  quantity_in_stock :integer
#  quantity_required :integer
#  base_price        :float
#  sales_price       :float
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Meal < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :quantities
  has_many :ingredient, through: :quantities
end
