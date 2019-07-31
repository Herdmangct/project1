
# Initialize to start of week 1
User.destroy_all
puts "Creating Users"
a1 = User.create :email => "Graham@ga.co", :name => "Graham", :password => 'chicken', :admin => true
u1 = User.create :email => "CozyThai@ga.co", :name => "CozyThai", :password => 'chicken'
u2 = User.create :email => "Lazana@ga.co", :name => "Lazana", :password => 'chicken'

Meal.destroy_all
puts "Creating Meals"
# Graham Meals
# Todo Update this
mg = Meal.create :name => "Spaghetti Bolognese", :quantity_in_stock => 4, :quantity_required => 4, :base_price => 10, :sales_price => 17.90

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
# Graham
# Spaghetti Bolognese
ig1 = Ingredient.create :product_name => "San Remo Spaghetti Angel Hair Pasta No 9 500g", :name => "Angel Hair Pasta", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/94378/san-remo-spaghetti-angel-hair-pasta-no-9", :price => 8
ig2 = Ingredient.create :product_name => "Woolworths Lean Beef Mince 500g", :name => "Beef Mince", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/577861/woolworths-lean-beef-mince", :price => 8
ig3 = Ingredient.create :product_name => "Leggo's Tomato Paste Regular 280g", :name => "Tomato Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/91990/leggo-s-tomato-paste-regular", :price => 8
ig4 = Ingredient.create :product_name => "Woolworths Diced Italian Tomatoes 800g", :name => "Diced Tomatoes", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/236393/woolworths-diced-italian-tomatoes", :price => 8
ig5 = Ingredient.create :product_name => "Gourmet Garden Garlic Cold Blended Paste Tube 120g", :name => "Garlic Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/706450/gourmet-garden-garlic-cold-blended-paste-tube", :price => 8
ig6 = Ingredient.create :product_name => "Gourmet Garden Paste Italian 80g", :name => "Italian Herb Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/948513/gourmet-garden-paste-italian", :price => 8
ig7 = Ingredient.create :product_name => "Masterfoods Seasoning Spaghetti Bolognese 40g", :name => "Spaghetti Bolognese Herbs", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/948513/gourmet-garden-paste-italian", :price => 8
ig8 = Ingredient.create :product_name => "Cobram Estate Extra Virgin Light Olive Oil 750ml", :name => "Olive Oil", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/345955/cobram-estate-extra-virgin-light-olive-oil", :price => 8
ig9 = Ingredient.create :product_name => "Saxa Natural Sea Salt Grinder 90g", :name => "Salt", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/142081/saxa-natural-sea-salt-grinder", :price => 8
# Broccoli
# Onion

# Cozy Thai
# MASMAN CURRY
i1 = Ingredient.create :product_name => "Diced Beef Casserole", :name => "Beef Cubes", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/675483/diced-beef-casserole", :price => 8, :supplier_email => "woolworths@ga.co"
i2 = Ingredient.create :product_name => "Fresh Brown Onion", :name => "Brown Onion", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/144329/onion-brown", :price => 2.90
i3 = Ingredient.create :product_name => "Fresh Potato Brushed", :name => "Potato", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/246566/potato-brushed", :price => 3.50
i4 = Ingredient.create :product_name => "Woolworths Peanuts Unsalted", :name => "Peanuts", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/598179/woolworths-peanuts-unsalted", :price => 2.10

# LEMON BEEF
i5 = Ingredient.create :product_name => "Woolworths Beef Rump", :name => "Rump Steak", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/764903/woolworths-beef-rump-steak-1-2-pieces", :price => 23
i6 = Ingredient.create :product_name => "Fresh Broccoli", :name => "Broccoli", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/134681/fresh-broccoli", :price => 3.50

# PAD SEE IW
i7 = Ingredient.create :product_name => "Erawan Rice Noodles Stick Pad Thai", :name => "Rice Noodles", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/313632/erawan-rice-noodles-stick-pad-thai", :price => 4
i8 = Ingredient.create :product_name => "Port Stephens 18 Large Free Range Eggs 900g", :name => "Eggs", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/339095/port-stephens-18-large-free-range-eggs", :price => 8.50
i9 = Ingredient.create :product_name => "Chilli Jalapeno Hot each", :name => "Jalapeno Chilli", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/126772/chilli-jalapeno-hot", :price => 1.90

# Lazana
# Linguine Meatballs
i10 = Ingredient.create :product_name => "San Remo Linguine Pasta No 1 500g", :name => "Linguine Pasta", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/82282/san-remo-linguine-pasta-no-1", :price => 1.95
i11 = Ingredient.create :product_name => "Woolworths Lean Beef Mince", :name => "Beef Mince", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/577861/woolworths-lean-beef-mince", :price => 13
i12 = Ingredient.create :product_name => "Leggo's Tomato Paste 500g", :name => "Tomato Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/38640/leggo-s-tomato-paste", :price => 7.40

# Veal Scallopini
i13 = Ingredient.create :product_name => "Woolworths Beef Blade Boneless Steak 1-2 Pieces 400g - 800g", :name => "Boneless Blade Beef Steak", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/764971/woolworths-beef-blade-boneless-steak-1-2-pieces", :price => 17
i14 = Ingredient.create :product_name => "Western Star Original Butter Block 500g", :name => "Butter", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/41287/western-star-original-butter-block", :price => 13.50

# Baked Sour Dough
i15 = Ingredient.create :product_name => "Woolworths Bread Sourdough Loaf each", :name => "Sourdough Bread", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/363952/woolworths-bread-sourdough-loaf", :price => 5.50
i16 = Ingredient.create :product_name => "Greek Family Farm Organic Greek Feta 50g", :name => "Feta", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :supplier_url => "https://www.woolworths.com.au/shop/productdetails/23244/greek-family-farm-organic-greek-feta", :price => 50

Quantity.destroy_all
puts "Creating Quantities"
# Graham
# Spaghetti Bolognese
# Angel Hair Pasta
qg1 = Quantity.create :measurement => 150, :unit_of_measurement => "gram", :users_ingredient_name => "Angel Hair Pasta"
# Beef Mince
qg2 = Quantity.create :measurement => 200, :unit_of_measurement => "gram", :users_ingredient_name => "Beef Mince"
# Tomato Paste
qg3 = Quantity.create :measurement => 0.5, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Tomato Paste"
# Diced Tomatoes
qg4 = Quantity.create :measurement => 0.25, :unit_of_measurement => "can", :users_ingredient_name => "Diced Tomatoes"
# Garlic Paste
qg5 = Quantity.create :measurement => 1, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Garlic Paste"
# Italian Herb Paste
qg6 = Quantity.create :measurement => 1, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Italian Herb Paste"
# Spaghetti Bolognese Herbs
qg7 = Quantity.create :measurement => 1, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Spaghetti Bolognese Herbs"
# Olive Oil
qg8 = Quantity.create :measurement => 1, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Olive Oil"
# Salt
qg9 = Quantity.create :measurement => 0.5, :unit_of_measurement => "teaspoon", :users_ingredient_name => "Salt"
# Onion
qg10 = Quantity.create :measurement => 0.5, :unit_of_measurement => "onion", :users_ingredient_name => "Onion"
# Broccoli
qg11 = Quantity.create :measurement => 3, :unit_of_measurement => "broccoli sprout", :users_ingredient_name => "Broccoli"


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
## Graham
a1.meals << mg

## Cozy Thai
u1.meals << m1 << m2 << m3

## Lazana
u2.meals << m4 << m5 << m6

# Users (one to many) Ingredients
## Graham

# Meals (one to many) Quantities
## Graham
mg.quantities << qg1 << qg2 << qg3 << qg4 << qg5 << qg6 << qg7 << qg8 << qg9 << qg10 << qg11

## Cozy Thai
m1.quantities << q1 << q2 << q3 << q4
m2.quantities << q5 << q6
m3.quantities << q7 << q8 << q9

# ## Lazana
m4.quantities << q10 << q11 << q12
m5.quantities << q13 << q14
m6.quantities << q15 << q16

# Ingredients (one to many) Quantities
## Graham
ig1.quantities << qg1
ig2.quantities << qg2
ig3.quantities << qg3
ig4.quantities << qg4
ig5.quantities << qg5
ig6.quantities << qg6
ig7.quantities << qg7
ig8.quantities << qg8
ig9.quantities << qg9

# ## Cozy Thai
i1.quantities << q1
i2.quantities << q2 << qg10
i3.quantities << q3
i4.quantities << q4
i5.quantities << q5
i6.quantities << q6 << qg11
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
