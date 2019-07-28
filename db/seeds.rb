
# Initialize to start of week 1
User.destroy_all
puts "Creating Users"
a1 = User.create :email => "Graham@ga.co", :name => "Graham", :admin => true
u1 = User.create :email => "CozyThai@ga.co", :name => "CozyThai"
u2 = User.create :email => "Lazana@ga.co", :name => "Lazana"

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
i1 = Ingredient.create :name => "Diced Beef Casserole", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 8
i2 = Ingredient.create :name => "Fresh Brown Onion", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 2.90
i3 = Ingredient.create :name => "Fresh Potato Brushed", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 3.50
i4 = Ingredient.create :name => "Woolworths Peanuts Unsalted 375g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 2.10

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
i11 = Ingredient.create :name => "Woolworths Lean Beef Mince 500g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 13
i12 = Ingredient.create :name => "Leggos Tomato Paste", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 7.40

# Veal Scallopini
i13 = Ingredient.create :name => "Woolworths Beef Blade Boneless Steak 1-2 Pieces 400g - 800g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 17
i14 = Ingredient.create :name => "Western Star Original Butter Block", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 13.50

# Baked Sour Dough
i15 = Ingredient.create :name => "Woolworths Bread Sourdough Loaf each", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 5.50
i16 = Ingredient.create :name => "Greek Family Farm Organic Greek Feta 50g", :quantity_in_stock => 10, :quantity_required => 10, :supplier => "Woolworths", :price => 50

puts "Adding Associations"
# Users (one to many) Meals
## Cozy Thai
u1.meals << m1 << m2 << m3

## Lazana
u2.meals << m4 << m5 << m6

# Meals (many to many) Ingredients
## Cozy Thai
m1.ingredients << i1 << i2 << i3 << i4
m2.ingredients << i5 << i6
m3.ingredients << i7 << i8 << i9

## Lazana
m4.ingredients << i10 << i11 << i12
m5.ingredients << i13 << i14
m6.ingredients << i15 << i16
