
# Initialize to start of week 1
User.destroy_all
puts "Creating Users"
a1 = User.create :email => "Graham@ga.co", :name => "Graham", :password => 'chicken', :admin => true
u1 = User.create :email => "CozyThai@ga.co", :name => "CozyThai", :password => 'chicken'
u2 = User.create :email => "Lazana@ga.co", :name => "Lazana", :password => 'chicken'

Meal.destroy_all
puts "Creating Meals"
# Cozy Thai Meals
m1 = Meal.create :name => "MASMAN BEEF CURRY", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 10, :sales_price => 17.90
m2 = Meal.create :name => "LEMON BEEF", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 10, :sales_price => 18.90
m3 = Meal.create :name => "PAD SEE IW", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 10, :sales_price => 14.90

# Lazana Meals
m4 = Meal.create :name => "Linguine Meatballs", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 10, :sales_price => 24.90
m5 = Meal.create :name => "Veal Scallopini", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 10, :sales_price => 30.90
m6 = Meal.create :name => "Baked Sour Dough", :quantity_in_stock => 10, :quantity_required => 10, :base_price => 5, :sales_price => 10.90


Ingredient.destroy_all
puts "Creating Ingredients"
# Cozy Thai
# MASMAN CURRY
i1 = Ingredient.create :name => "Diced Beef Casserole", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/675483/diced-beef-casserole", :price => 8
i2 = Ingredient.create :name => "Fresh Brown Onion", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/144329/onion-brown", :price => 2.90
i3 = Ingredient.create :name => "Fresh Potato Brushed", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/246566/potato-brushed", :price => 3.50
i4 = Ingredient.create :name => "Woolworths Peanuts Unsalted", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/598179/woolworths-peanuts-unsalted", :price => 2.10

# LEMON BEEF
i5 = Ingredient.create :name => "Msa Australian Beef Rump", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 23
i6 = Ingredient.create :name => "Fresh Broccoli", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 3.50

# PAD SEE IW
i7 = Ingredient.create :name => "Thick Rice Noodles", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 4
i8 = Ingredient.create :name => "Eggs", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 8.50
i9 = Ingredient.create :name => "Fresh chilli", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 1.90

# Lazana
# Linguine Meatballs
i10 = Ingredient.create :name => "San Remo Linguine Pasta", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 1.95
i11 = Ingredient.create :name => "Woolworths Lean Beef Mince", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 13
i12 = Ingredient.create :name => "Leggos Tomato Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 7.40

# Veal Scallopini
i13 = Ingredient.create :name => "Woolworths Beef Blade Boneless Steak 1-2 Pieces 400g - 800g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 17
i14 = Ingredient.create :name => "Western Star Original Butter Block", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 13.50

# Baked Sour Dough
i15 = Ingredient.create :name => "Woolworths Bread Sourdough Loaf each", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 5.50
i16 = Ingredient.create :name => "Greek Family Farm Organic Greek Feta 50g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 50

Quantity.destroy_all
puts "Creating Quantities"
# Cozy Thai
# MASMAN CURRY
# Diced Beef Casserole
q1 = Quantity.create :measurement => 500, :unit_of_measurement => "gram"
# Fresh Brown Onion
q2 = Quantity.create :measurement => 0.5, :unit_of_measurement => "unit"
# Fresh Potato Brushed
q3 = Quantity.create :measurement => 1, :unit_of_measurement => "unit"
# Woolworths Peanuts Unsalted
q4 = Quantity.create :measurement => 50, :unit_of_measurement => "gram"

# LEMON BEEF
# Msa Australian Beef Rump
q5 = Quantity.create :measurement => 250, :unit_of_measurement => "gram"
# Fresh Broccoli
q6 = Quantity.create :measurement => 250, :unit_of_measurement => "gram"

# PAD SEE IW
# Thick Rice Noodles
q7 = Quantity.create :measurement => 100, :unit_of_measurement => "gram"
# Eggs
q8 = Quantity.create :measurement => 1, :unit_of_measurement => "unit"
# Fresh chilli
q9 = Quantity.create :measurement => 1, :unit_of_measurement => "unit"

# Lazana
# Linguine Meatballs
# San Remo Linguine Pasta
q10 = Quantity.create :measurement => 100, :unit_of_measurement => "gram"
# Woolworths Lean Beef Mince
q11 = Quantity.create :measurement => 300, :unit_of_measurement => "gram"
# Leggos Tomato Paste
q12 = Quantity.create :measurement => 50, :unit_of_measurement => "gram"

# Veal Scallopini
# Woolworths Beef Blade Boneless Steak
q13 = Quantity.create :measurement => 400, :unit_of_measurement => "gram"
# Western Star Original Butter Block
q14 = Quantity.create :measurement => 20, :unit_of_measurement => "gram"

# Baked Sour Dough
# Woolworths Bread Sourdough Loaf each
q15 = Quantity.create :measurement => 1, :unit_of_measurement => "unit"
# Greek Family Farm Organic Greek Feta
q16 = Quantity.create :measurement => 20, :unit_of_measurement => "gram"



puts "Adding Associations"
# Users (one to many) Meals
## Cozy Thai
u1.meals << m1 << m2 << m3

## Lazana
u2.meals << m4 << m5 << m6

# Meals (one to many) Quantities
# ## Cozy Thai
m1.quantities << q1 << q2 << q3 << q4
m2.quantities << q5 << q6
m3.quantities << q7 << q8 << q9

# ## Lazana
m4.quantities << q10 << q11 << q12
m5.quantities << q13 << q14
m6.quantities << q15 << q16

# Ingredients (one to many) Quantities
# ## Cozy Thai
i1.quantities << q1
i2.quantities << q2
i3.quantities << q3
i4.quantities << q4
i5.quantities << q5
i6.quantities << q6
i7.quantities << q7
i8.quantities << q8
i9.quantities << q9

# Lazana
i10.quantities << q10
i11.quantities << q11
i12.quantities << q12
i13.quantities << q13
i14.quantities << q14
i15.quantities << q15
i16.quantities << q16
