-- ============================================================
-- Reset & seed script — for recipe archive data imported from
-- All Recipes.pdf.
--
-- Run this AFTER restarting the backend at least once with the
-- current `notes` field on Recipe (so the column already exists).
--
-- WARNING: this deletes all existing recipes and categories first.
-- ============================================================

TRUNCATE TABLE recipes, categories RESTART IDENTITY CASCADE;

-- Final category list — exactly these five, matching the filter
-- chips in index.html.
INSERT INTO categories (name) VALUES
    ('breakfast'),
    ('dessert'),
    ('main course'),
    ('side'),
    ('sauce');

-- Recipes are entered in the same order as they appear in the PDF.
INSERT INTO recipes (category_id, title, source_type, url, notes, ingredients, steps, tags) VALUES
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Turkey or Chicken Casserole',
        'homemade',
        NULL,
        'Grandma Losser’s (Glenna) recipes.',
        '2 cups cooked, cubed chicken or turkey
1 can cream of celery soup
1 can cream of chicken soup
1/2 cup chopped onion
1 tbsp butter
2-3 cups egg noodles, cooked
salt and pepper to taste
crushed potato chips
Chinese noodles',
        'Saute chopped onion in 1 tbsp butter.
Mix all of the ingredients together and put into a 9 x 13 dish.
Top with crushed potato chips.
Bake at 350 degrees for 30 minutes, until warmed through.
Serve hot and add Chinese noodles as a topping.',
        'main course
casserole
chicken
turkey
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Creamed Peas and Potatoes',
        'homemade',
        NULL,
        NULL,
        '5-6 potatoes
1 package frozen petite peas
milk
1 cube butter
1/2 cup flour
salt and pepper to taste',
        'Peel and cube potatoes.
Boil in water and a little salt until the potatoes are soft.
Add the peas and bring to a boil.
Strain the potatoes and peas. Set aside.
Make a roux. Melt the butter in a large pot and add the flour.
Stir until the butter and flour are combined.
Add about 3 cups of milk and stir together.
Add in the peas and potatoes.
Stir all ingredients until warm and thickened.
If it seems too thick, add more milk until you get a thick soup consistency.
Add salt and pepper to taste.',
        'side
vegetarian
potatoes
peas
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Acini De Pepe Salad',
        'homemade',
        NULL,
        'I don’t add marshmallows because I don’t think I need the added sugar!',
        '1 cup Acini De Pepe
1 cup sugar
1/2 tsp salt
2 beaten eggs
1 3/4 cups pineapple juice
2 tbsp flour
1 container Cool Whip
about 3 cans drained mandarin oranges
optional: marshmallows
optional: pineapple
optional: any kind of fruit',
        'Cook 1 cup of Acini De Pepe thoroughly. Drain.
While cooking the Acini De Pepe, make the sauce.
Cook the sugar, salt, beaten eggs, pineapple juice, and flour over medium heat, stirring constantly.
When it comes to a boil, pour over the cooked Acini De Pepe.
Chill in the fridge for several hours, about 6 hours. The noodles will soak up the sauce while cooling.
Add 1 container of Cool Whip and about 3 cans of drained mandarin oranges.
You can also add marshmallows, pineapple, or any kind of fruit.',
        'side
salad
fruit
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Cottage Cheese Salad',
        'homemade',
        NULL,
        'Go easy on the Jello powder. You can always add more if it isn’t flavorful enough. It isn’t good if it is too sweet.',
        '4 cups cottage cheese
1 large can crushed pineapple, drained
1 tub Cool Whip
1/2 box sugar-free Jello powder (orange or strawberry)
fruit of your choice (mandarin oranges or strawberries)',
        'Drain the crushed pineapple.
Add the Jello to the pineapple to dissolve.
Add in the cottage cheese and Cool Whip.
Mix in the fruit that matches the Jello choice.',
        'side
salad
fruit
jello
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Broccoli Salad',
        'homemade',
        NULL,
        'We like the Wild Berry topping from Costco. It has craisins, almonds, and sunflower seeds.',
        '1 bag coleslaw
fresh broccoli, chopped (about 1 cup)
poppyseed dressing
salad topping from Costco',
        'Mix all ingredients together and top with salad topping from Costco.',
        'side
salad
broccoli
vegetarian
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Molasses Bread',
        'homemade',
        NULL,
        'This recipe came from Pinterest, but Colette found it and shared it with me. This bread is moist, and tastes great! I also like to use this bread to make french toast.',
        '2 1/2 cups warm water (about 110 degrees)
1 1/2 tbsp instant yeast
1/3 cup + 1 tbsp molasses
2 tbsp cocoa powder
3 tbsp oil (I use olive oil)
1/3 cup honey
2 tsp salt
3 tbsp vital wheat gluten
6-7 cups all-purpose flour',
        'In a bowl of an electric mixer fitted with a dough hook, combine the water, yeast, molasses, cocoa powder, oil, honey, salt, gluten, and 2 cups of flour.
Mix until combined.
With the mixer running, slowly add the rest of the flour.
Add the flour gradually until the dough pulls away from the sides of the bowl.
Knead for 5-7 minutes.
The dough should be soft and slightly tacky but shouldn’t leave a lot of residue on your fingers if you grab a piece.',
        'side
bread
molasses
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Pumpkin Chocolate Chip Bread',
        'homemade',
        NULL,
        '1 loaf. If you want to use small loaves, 1 large loaf equals 3 small loaves. These take about 40-45 minutes to bake.',
        '1 cup canned pumpkin
2 eggs
1 1/2 cups sugar
1/2 cup olive oil
1 1/3 cups flour
1 tsp baking soda
3/4 tsp salt
1/2 tsp ground cinnamon
1/2 tsp ground cloves
1/2 tsp ground nutmeg
1/4 tsp baking powder
1/2 cup semisweet chocolate chips',
        'Bake at 350 degrees for 1 hour.
Check the middle with a toothpick to make sure it comes out clean.
For small loaves, bake about 40-45 minutes.',
        'dessert
bread
pumpkin
chocolate
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Pumpkin Chocolate Chip Bread (3 Loaves)',
        'homemade',
        NULL,
        '3 loaves.',
        '1 large can pumpkin
6 eggs
4 1/2 cups sugar
5 cups olive oil
1 1/3 cups flour
3 tsp baking soda
2 1/4 tsp salt
1 1/2 tsp ground cinnamon
1 1/2 tsp ground cloves
1 1/2 tsp ground nutmeg
3/4 tsp baking powder
1 1/2 cups semisweet chocolate chips',
        'Bake at 350 degrees for 1 hour.
Check the middle with a toothpick to make sure it comes out clean.',
        'dessert
bread
pumpkin
chocolate
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Superb Apple Pie',
        'homemade',
        NULL,
        'This recipe came from the Losser Family Favorites Cook Book. I love this recipe! Granny Smith are my favorite apples.',
        'CRUST:
1 1/2 cups flour
3/4 tsp salt
2 tbsp cold milk
1 1/2 tsp sugar
1/2 cup oil (I use olive oil)

FILLING:
4 cups diced apples (Granny Smith are my favorite)
2 tbsp flour
1 tsp cinnamon
1/2 cup sugar
1/2 tsp nutmeg

TOPPING:
1/2 cup flour
1/2 cup sugar
1/2 cup butter',
        'For the crust, combine all ingredients. Mix until blended. Pat onto the bottom of a 9 inch pie pan.
For the filling, combine and toss lightly with apples. Pour into unbaked pie shell. Add topping before baking.
For the topping, combine flour, butter, and sugar and mix until crumbly. Sprinkle over the top of apple filling.
Bake at 350 degrees for 1 hour and 15 minutes.',
        'dessert
pie
apple
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Apple Crisp',
        'homemade',
        NULL,
        'Serve with vanilla ice cream! This recipe comes from the Losser Family Favorites Cook Book.',
        '3 cups diced apples (Granny Smith)
3/4 cup flour
1 tsp cinnamon
1 cup brown sugar
3/4 cup quick oats
1/2 cup butter',
        'Arrange the apples in a greased cake pan.
Combine sugar, flour, oats, and cinnamon; cut in butter till crumbly.
Press or arrange mixture over apples.
Bake at 350 degrees for 30-40 minutes, or until the top is brown.
Serve with vanilla ice cream.',
        'dessert
crisp
apple
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Applesauce Chocolate Chip Cookies',
        'homemade',
        NULL,
        'Store in an airtight container. These taste even better after the first day! Janie (Dad’s Sister) loves these! Brittany took them to her at dance class whenever we made them!',
        '1 cup butter
2 cups sugar
3 eggs
4-5 cups flour
1 tsp salt
1 tsp cinnamon
1 tsp nutmeg
1/2 tsp cloves
2 cups applesauce
2 tsp baking soda
1 1/2 cups chocolate chips',
        'Mix all ingredients together.
Drop by tablespoons onto the cookie sheet.
Bake at 350 degrees for about 12 minutes.
Store in an airtight container.',
        'dessert
cookies
applesauce
chocolate chip
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Cinnamon Rolls',
        'homemade',
        NULL,
        'I get about 15 rolls with this recipe.',
        '1 1/2 cups warm milk
1 tbsp yeast
1/2 cup warm water (110 degrees)
1/2 cup sugar
1/2 cup butter
2 tsp salt
2 eggs
5 1/2-7 cups flour

FOR ROLLS:
butter
cinnamon
brown sugar
white sugar

FROSTING:
1/2 cup butter (softened, but not melted)
powdered sugar (1 pound)
1 tsp vanilla
water',
        'Dissolve the yeast in water with 1 tbsp of the sugar, then add to cooled milk.
Add butter, salt, eggs and flour.
Add flour 1 cup at a time, mixing well after each addition to make sure the dough has elasticity.
Put in a greased bowl and let rise until double in bulk.
Punch down and let rise again.
Form the rolls by rolling out on the counter until 1/2 inch thick.
Spread butter, cinnamon, brown sugar, and white sugar evenly over the dough.
Roll dough up into a pinwheel and pinch the dough together.
Cut each roll into a 1 inch slice with a piece of thread.
Place into greased pans and let rise.
Bake at 350 degrees for 20-25 minutes.
While the rolls are baking, make the frosting.
Add the butter, vanilla, and about 2 cups of powdered sugar to a bowl.
Slowly add water, a little at a time, until you get the right consistency. It should not be too runny. Thicker than pancake batter. You may need to add more sugar if too runny.
When the rolls come out of the oven spread the frosting on them while still hot.',
        'dessert
breakfast
cinnamon
rolls
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Pie Crust',
        'homemade',
        NULL,
        'This is my favorite recipe for pie crust. I use it for banana cream, lemon, pumpkin, and apple pie.',
        '1 1/2 cups flour
3/4 tsp salt
2 tbsp milk
1 1/2 tsp sugar
1/2 cup oil (I use olive oil)',
        'Combine all ingredients.
Pat onto the bottom and sides of a 9 inch pie pan.
Bake at 450 degrees for 10 minutes.',
        'side
baking
pie crust
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Smoked Salmon',
        'homemade',
        NULL,
        'Marinate the salmon for 4 hours. Slice the meat down to the skin so the marinade can get absorbed. Rinse with cold water after 4 hours. Use Alder Chips for best flavor.',
        '1 cup brown sugar
1/2 cup salt
4 cups water
1 1/2 tsp Worcestershire sauce
salmon
lemon pepper',
        'Marinate the salmon for 4 hours.
Slice the meat down to the skin so the marinade can get absorbed.
Rinse with cold water after 4 hours.
Smoke in the smoker with lemon pepper sprinkled on top.
Use Alder Chips for best flavor.',
        'main course
salmon
smoked
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Chicken Fettuccine Alfredo',
        'homemade',
        NULL,
        'I like Penne Noodles.',
        '1/2 cup butter
2 cups heavy whipping cream
1 tsp garlic powder
salt and pepper to taste
1 dash cayenne pepper
2/3 cup parmesan cheese
1 lb box fettuccine noodles
2 chicken breasts, cut into bite sizes (rotisserie)',
        'Cook the noodles and drain.
In a saucepan over medium-low heat, melt butter; add cream, garlic powder, salt and pepper; simmer for 10-20 minutes stirring constantly or until thick.
If it doesn’t thicken, add 1 tbsp of cornstarch.
Remove sauce from heat and add cheese. Do not heat sauce after the cheese has been melted.
Put the noodles into a large bowl and pour the sauce over all the noodles.
Serve immediately, enjoy!',
        'main course
pasta
chicken
alfredo
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Picnic Cake',
        'homemade',
        NULL,
        'This cake tastes even better the day after! It is moist and requested often for birthdays! Grandma Losser (Arzley). This was a family favorite! Grandma always was a great cook and I remember her always having cookies or treats for us when we visited. I loved going to her house! We helped her and Grandpa in the garden a lot when we were kids. I fondly remember sitting outside in the shade shucking corn, and shelling peas for hours with Grandma and my Mom. Grandma also always had a beautiful flower garden!',
        '1 cup dates, chopped
1 1/2 cups boiling water
1 tsp soda
1 cup sugar
3/4 cup butter
2 eggs
1 3/4 cups flour
1 tsp cinnamon
1 tsp vanilla
1/2 tsp salt
1/2 cup brown sugar
chocolate chips',
        'Boil the water, add the dates and soda, and cool.
Cream together the sugar, butter, eggs, flour, cinnamon, vanilla, and salt.
Add the date mixture to the creamed mix. It will be runny.
Pour into a greased 9 x 13 pan.
Sprinkle uncooked cake with 1/2 cup brown sugar and chocolate chips.
Bake at 350 degrees for 40 minutes.',
        'dessert
cake
dates
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'sauce'),
        '3 Minute Caramel',
        'homemade',
        NULL,
        'This was my Grandma Losser’s Recipe. (Arzley) I use this to make caramel popcorn.',
        '1 cup brown sugar
1 cube butter (1/2 cup)
1/3 cup Karo syrup
1 tsp vanilla',
        'Put sugar, syrup and margarine in a pan.
Bring to a boil.
Boil rapidly for 1 minute.
Remove from heat and add vanilla.
Use to coat popcorn, apples, candy, or as caramel squares.',
        'sauce
caramel
popcorn
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Chip Dip',
        'homemade',
        NULL,
        'Grandma Losser made this for special occasions. She would always make a double batch when my parents took this to friends’ homes on date night. She always left some for us kids at home.',
        '1 cup cottage cheese
1 cup sour cream
8 oz cream cheese
2 tsp Worcestershire sauce
1/2 cup Miracle Whip
a little salt to taste',
        'Stir with a spoon or whisk, not a beater.
Serve with potato chips.',
        'side
dip
appetizer
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Sugar Cookies',
        'homemade',
        NULL,
        'These are great plain, or frosted. Grandma Losser (Glenna). My mom made these mostly for Halloween and Christmas. She had several people ask for her recipe! It is still my favorite sugar cookie recipe. Grandma didn’t love to cook or bake. Once we learned how to make something, she would say, “If you do the cooking, I’ll clean it up.” She took lots of pride in keeping a clean house. She was a great wife, mom, grandma, housekeeper, seamstress, etc.',
        '1 cup butter
2 cups sugar
4 eggs
2 tbsp milk
2 tsp vanilla
4 cups flour
2 tbsp baking powder
1 tsp salt',
        'Mix and put into the freezer until cold.
Roll out on a flour-covered counter until 1/4 inch thick.
Cut out into shapes.
Cook at 350 degrees for 8-10 minutes.',
        'dessert
cookies
sugar
family recipe
holiday'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Grandpa Losser’s Milkshakes',
        'homemade',
        NULL,
        NULL,
        'Neapolitan ice cream or chocolate
1 banana
milk
marshmallows
malt (1 heaping tbsp)',
        'Mix the ice cream, milk, malt, and banana until desired consistency.
Add marshmallows at the end and blend just lightly so you still have pieces of marshmallows in the milkshake.',
        'dessert
milkshake
banana
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Parker House Rolls',
        'homemade',
        NULL,
        'This was my Grandma Elmer’s Recipe. It was always a favorite at family dinners.',
        '6 tbsp butter
3 tsp salt
1/4 cup sugar
10 1/2 cups flour
4 cups scalding milk, cooled
3 eggs, beaten
3 tbsp yeast
1/2 cup warm water
1/4 cup melted butter to dip the dough into',
        'Combine all the ingredients.
Let the dough rise twice. Punch down each time.
Roll out to 1/2 inch thickness.
Dip half of the dough into butter and fold the other half over and place in a dish.
This recipe makes about 5 dozen rolls.
You can brush the tops of the rolls with butter before baking.
Bake at 400 degrees for 20 minutes.',
        'side
bread
rolls
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Banana Cream Pie',
        'homemade',
        NULL,
        'This filling is also great in cream puffs! Best done at room temperature. I like to heat the milk in the microwave to reduce the stirring time. Fills one 9 inch pastry shell. Grandma was famous for her banana cream pie. It was always a family favorite! The recipe came from the Better Homes and Garden Cook Book. My siblings never knew this is where it originated.',
        '1 cup sugar
1/2 cup flour or 1/4 cup cornstarch
1/4 tsp salt
3 cups whole milk
4 eggs, separated (keep the yolks)
3 tbsp butter
1 1/2 tsp vanilla',
        'In a medium saucepan combine sugar, flour or cornstarch, and salt; gradually stir in the milk.
Cook and stir over medium heat till thickened and bubbly.
Reduce heat; cook and stir for 2 minutes more.
Remove from heat.
Separate egg yolk from the whites. Beat egg yolks slightly.
Gradually stir 1 cup of the hot mixture into the yolks.
Return egg mixture to saucepan; bring to a gentle boil.
Cook and stir for 2 minutes more.
Remove from heat.
Stir in butter and vanilla.
Pour hot filling over into a baked pastry.',
        'dessert
pie
banana
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Chicken Chowder',
        'homemade',
        NULL,
        'Denise’s Addition: 2 chicken bouillon cubes dissolved in 1 cup of warm water. Add cheese and bacon for a topping if you want!',
        '2 cups chopped chicken (I use rotisserie)
1 cup diced onion
1 cup chopped celery
2 cups diced, peeled potatoes
3/4 cup butter
3/4 cup flour
1/2 tsp sugar
4 cups half and half
1 1/2 tsp salt
2 chicken bouillon cubes dissolved in 1 cup warm water',
        'Cook veggies until tender, drain, then make a roux.
Melt the butter and add the flour slowly. Stir until combined.
Add sugar, half and half, salt, and chicken bouillon dissolved in warm water.
Add veggies to the creamed mixture.
Add cheese and bacon for a topping if you want!',
        'main course
soup
chicken
chowder
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Peanut Butter Bars',
        'homemade',
        NULL,
        'Colette Whicker. Colette is my youngest sister. We are 12 years apart in age, but she is one of my best friends. She makes great bread and yummy treats. Over the years, we have done Swagbucks, and shared ways to save money with coupons, etc. I was always grateful that when my kids were at college in Utah that they called her their second mom.',
        '1 cup butter
1 cup sugar
2 eggs
1 cup peanut butter
1 cup brown sugar
2 tsp vanilla
1 tsp soda
2 cups flour
1/2 tsp salt
2 cups oats
chocolate chips

ICING:
1/2 cup peanut butter
1/2 cup butter
1/3 cup powdered sugar
1 tsp vanilla',
        'Cream together the first 6 ingredients and then add soda, flour, salt and oats.
Mix all together and place in a greased pan.
Bake at 350 degrees for 15-20 minutes in a jellyroll pan, or 25-30 minutes in a 10 x 15 pan.
Remove from the oven and sprinkle chocolate chips on top.
After chocolate is melted, spread and then cool.
When cooled, spread creamy peanut butter icing on top.',
        'dessert
peanut butter
bars
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Macaroni Salad',
        'homemade',
        NULL,
        'Kent is famous for this salad. He has always been great at making food look delicious! He makes amazing veggie platters that are pleasing to the eye. He is always asked to bring this salad to family get-togethers. If the salad is dry, add a little Miracle Whip before serving.',
        '1 package small shell macaroni
1 cup Miracle Whip
4 hard-boiled eggs
1 1/2 tomato, seeds removed
3 green onions, diced
2 tbsp mustard seeds
1 cucumber, diced
1/2 lb Savory Ham, diced (Black Forest)
1/2 tsp celery salt
salt and pepper to taste',
        'Prepare the hard-boiled eggs and macaroni.
Boil the macaroni in salt water, drain, but don’t rinse.
Warm the ham in a skillet before adding to salad.
Combine all ingredients and serve cooled.
If the salad is dry, add a little Miracle Whip before serving.',
        'side
salad
macaroni
ham
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Teriyaki Chicken',
        'homemade',
        NULL,
        'Pineapple juice is the key ingredient to make it sweet! Sometimes I add 1/2 to 1 cup more pineapple juice. It’s awesome! From Greg’s Grill (Dad’s Brother). Cook the thighs on the grill! Yum.',
        'chicken thighs

MARINADE:
1 cup soy sauce
2 cups brown sugar
1 cup pineapple juice
1/4 cup ginger root
1 tbsp garlic',
        'Mix all the marinade ingredients together and cook them on the stove, but don’t bring to a boil, just get it hot.
Marinate the chicken in the fridge overnight.
Cook the thighs on the grill.',
        'main course
chicken
teriyaki
grill
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Chicken Enchiladas',
        'homemade',
        NULL,
        'Cori Heath (Dad’s Sister). Cori got this recipe from her best friend, Nancy Farr.',
        'chicken, cubed, or 2 cans of chicken
flour tortillas
1 cup cheddar cheese in the sauce, plus more for topping
1 can cream of chicken soup
1 cup sour cream
1/2 cup milk
salt and pepper to taste',
        'Cube the chicken. I like to use a rotisserie chicken.
In a saucepan heat the soup, cheese and milk. Save 1/2 of this for the topping.
Add the chicken to the other half.
Fill the tortillas and roll and layer in a casserole dish. I get about 10.
Smother the other half of the sauce on top of the enchiladas and top with cheddar cheese.
Cover and bake in the oven at 350 degrees until warmed through and the cheese melts, 30-40 minutes.',
        'main course
chicken
enchiladas
mexican
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Stuffing',
        'homemade',
        NULL,
        'Aunt Janice (Grandpa Losser’s Sister). Miriam Kilmer. Aunt Janice was an excellent cook! This is a Losser family favorite at Thanksgiving. She was the sweetest lady and I always loved visiting with her. My siblings all think of Miriam when we have this, because she always makes it for the get-togethers!',
        '1 loaf bread, cut into cubes
poultry seasoning
sage
salt and pepper
1 square butter
1 medium onion, diced
2-3 stalks celery, diced
2 chicken bouillon cubes
2 cups water',
        'Sprinkle the bread cubes generously with poultry seasoning, sage, salt and pepper. Toss each time to coat the bread cubes. Do this 3 times.
In a saucepan saute the butter, onions, and celery.
Add the water and chicken bouillon cubes and bring to a boil.
Pour it over the prepared bread cubes and put in a 7 x 11 greased glass casserole dish.
Cover with tin foil and bake at 350 degrees for 1 hour.
Take the foil off the last 15 minutes.
Double this for a 9 x 13.',
        'side
stuffing
thanksgiving
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Raspberry Pretzel Jello Salad',
        'homemade',
        NULL,
        'Jan Shirley. Jan is my younger sister by 10 years. She is always looking for an adventure to go on. She is also our family hair stylist!',
        'PRETZEL CRUST:
1 1/2 cups crushed pretzels
3 tbsp brown sugar
1/2 cup butter

CREAM LAYER:
8 oz cream cheese, softened to room temperature
1 1/2 cups powdered sugar
1/2 cup heavy whipping cream
1/2 tsp vanilla

RASPBERRY JELLO:
6 oz package raspberry Jello
2 cups boiling water
12 oz frozen raspberries',
        'For the pretzel crust, preheat the oven to 375 degrees.
In a medium bowl, whisk together the pretzels, brown sugar, and butter until evenly combined.
Press the mixture in the bottom of a 9 x 13 inch pan.
Bake for 8-10 minutes until lightly golden.
For the cream layer, in a medium bowl with an electric mixer, whip together the cream cheese and powdered sugar until smooth and creamy, 1-2 minutes, scraping down the sides of the bowl.
Add the heavy cream and vanilla and mix until thick and creamy.
Spread the cream layer over the cooled crust.
Combine the Jello and water until Jello is dissolved.
Stir in the frozen raspberries.
Let it start to set up before pouring over the cream layer.
Refrigerate until firm and set up.',
        'dessert
jello
raspberry
pretzel
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Mom’s Lemon Jello Salad',
        'homemade',
        NULL,
        NULL,
        '1 large lemon Jello
1 can crushed pineapple
2 bananas
1 egg
1/2 cup sugar
2 tbsp cornstarch or flour
1 oz Cool Whip',
        'Make lemon Jello.
Drain pineapple and collect juice into a pan.
Put crushed pineapple into a rectangular glass serving dish Jello.
Slice 2 bananas and add them to the Jello as well.
Add egg to pineapple juice.
Add flour.
Add sugar.
Add cornstarch.
Cook over the stove over medium/medium high until it thickens.
Take it off and let it cool down completely.
Add the Cool Whip to mixture.
Add to Jello as topping.',
        'dessert
jello
pineapple
banana
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Fruit Fizz',
        'homemade',
        NULL,
        NULL,
        '2 cups sugar
1 cup water
1 large can orange juice and water
1 #2 can crushed pineapple
1 small can lemonade and water
3 crushed bananas',
        'Boil sugar and water for 3 minutes.
Let cool.
Add orange juice and water, crushed pineapple, lemonade and water, and crushed bananas.
Mix and freeze.
To serve, pour 7-Up over it.',
        'dessert
frozen
fruit
family recipe'
    ),
    (
        (SELECT id FROM categories WHERE name = 'breakfast'),
        'Banana Nut Muffins w/ Choco Chunks',
        'homemade',
        NULL,
        'Prep time: 10 minutes. Total time: 30 minutes. Servings: 18.',
        '1/2 cup margarine
3-4 large overripe bananas
2 large eggs
1 tsp vanilla extract
1 tsp baking soda
1/2 tsp salt
1/2 tsp cinnamon
1/2 cup brown sugar
1 1/2 cups all-purpose flour
1 1/2 bag Toll House chocolate chunks
1 cup chopped walnuts',
        'Preheat oven to 350°F.
Mash banana and combine with margarine. Add eggs and vanilla extract. Don’t be alarmed if it looks curdled.
Mix in all dry ingredients.
Bake in a muffin tin for 18-20 minutes, or until you can tap the top of the muffin and it springs back.',
        'breakfast
muffins
banana
chocolate
nuts'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'Classic No-Bake Cookies',
        'external',
        'https://www.livewellbakeoften.com/classic-no-bake-cookies/#recipe',
        'Prep time: 20 minutes. Cook time: 5 minutes. Cooling time: 20 minutes. Total time: 45 minutes. Servings: 30 cookies. Cuisine: American. Course: Dessert. Author: Danielle Rye.

Storage Instructions: Cookies may be stored in an airtight container at room temperature for up to one week.

Freezing Instructions: Once the cookies have cooled completely, store them in a large freezer bag or freezer-friendly storage container in the freezer for up to 3 months. Thaw the cookies to room temperature before serving.

Milk: I prefer to use whole milk in this recipe, but 2%, 1%, skim, or even almond milk will work.

Oats: You may use old-fashioned rolled oats in these cookies, but they will be chewier. I recommend using quick-cooking oats if possible or pulsing the old-fashioned rolled oats in a food processor 2 or 3 times to break them down.',
        '1/2 cup (115 grams) butter, sliced into pieces
2 cups (400 grams) granulated sugar
1/2 cup (120 ml) milk
1/4 cup (20 grams) unsweetened cocoa powder
1/2 cup (125 grams) creamy peanut butter
1 teaspoon pure vanilla extract
3 cups (300 grams) quick-cooking oats',
        'Before getting started, gather all of your ingredients and measure everything out.
Line two large baking sheets with parchment paper and set aside.
Combine the butter, sugar, milk, and unsweetened cocoa powder in a large saucepan and heat over medium heat, stirring often until the butter is melted and everything is well combined.
Bring the mixture to a rolling boil and allow to boil for 60 seconds, stirring occasionally.
Remove from the heat, and stir in the peanut butter and vanilla extract until fully combined.
Stir in the oats and mix until all of the oats are coated with the mixture and everything is well combined.
Drop spoonfuls of the mixture onto the prepared baking sheets. A 1.5 tablespoon cookie scoop can be used.
Allow to cool for 20 to 30 minutes, serve, and enjoy!',
        'dessert
cookies
no-bake
peanut butter
chocolate'
    ),
    (
        (SELECT id FROM categories WHERE name = 'dessert'),
        'No-Bake Energy Bites',
        'homemade',
        NULL,
        'Servings: 15-18. Total time: 45 minutes, including 15 minutes hands-on time. Total calories: 250 cals. Total fat: 15 g. Saturated fat: 4.5 g. Protein: 8 g. Total carbohydrate: 25 g. Dietary fiber: 3 g. Sodium: 110 mg.',
        '1 cup old-fashioned oats
1/2 cup peanut butter, low-sodium
1/3 cup raw pumpkin seeds or sunflower seeds, raw, unsalted
1/3 cup toasted unsweetened coconut flakes
3 tbsp semi-sweet chocolate chips
1/3 cup honey
1 tsp vanilla
1/4 tsp sea salt',
        'Mix all ingredients together in a medium bowl.
Let chill in the refrigerator for 30 minutes.
Once chilled, roll into balls (1 inch diameter).
Store in an airtight container and keep refrigerated, up to one week.
Enjoy throughout the week!',
        'dessert
no-bake
energy bites
snack'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Green Bean Casserole',
        'external',
        NULL,
        'Recipe uses Campbell’s Condensed Cream of Mushroom Soup and French’s French Fried Onions.',
        '1 can (10 1/2 ounces) Campbell’s Condensed Cream of Mushroom Soup or 98% Fat Free Cream of Mushroom Soup or Condensed Unsalted Cream of Mushroom Soup
1/2 cup milk
1 tsp soy sauce
4 cups cooked cut green beans
1 1/3 cups French’s French Fried Onions
salt and pepper',
        'Heat the oven to 350°F.
Stir the soup, milk, soy sauce, beans, and 2/3 cup onions in a 1 1/2-quart casserole. Season the mixture with salt and pepper.
Bake for 25 minutes or until hot.
Stir the bean mixture.
Sprinkle with the remaining 2/3 cup onions.
Bake for another 5 minutes or until the onions are golden brown.',
        'side
casserole
green beans
thanksgiving'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Green Onion Cheese Ball',
        'homemade',
        NULL,
        'Handwritten note on the recipe card indicates that the cream cheese should be softened. The recipe card does not provide preparation directions.',
        '2 tsp sour cream
1/4 cup mayo
1 8 oz package cream cheese, softened
1/8 tsp dill
1/8 tsp celery salt
1/8 tsp onion salt
1 1/2 oz cheddar cheese
2 1/2 tsp chopped green onion',
        NULL,
        'side
appetizer
cheese
dip'
    ),
    (
        (SELECT id FROM categories WHERE name = 'sauce'),
        'Chick Fil A Sauce Recipe',
        'external',
        'https://buildyourbite.com/copycat-chick-fil-a-sauce-recipe/',
        'Copycat Chick Fil A Sauce Recipe made with just four ingredients! Source page identifies the category as Appetizers and the cuisine as American.',
        '1/4 cup mayo
1 teaspoon mustard
1 tablespoon barbecue sauce
1 tablespoon honey',
        'Add all ingredients to a bowl and stir or whisk well to combine.
Serve with waffle fries or your favorite nuggets!',
        'sauce
copycat
dipping sauce'
    ),
    (
        (SELECT id FROM categories WHERE name = 'breakfast'),
        'Smedleys Crepes',
        'homemade',
        NULL,
        NULL,
        '1 1/4 cups flour
1 1/2 cups milk
3 eggs
1 tsp salt
1 tsp sugar
2 tbsp oil (olive)',
        NULL,
        'breakfast
crepes'
    ),
    (
        (SELECT id FROM categories WHERE name = 'main course'),
        'Chili in 20 Minutes',
        'homemade',
        NULL,
        NULL,
        '1 can kidney beans, drained
1 can black beans, drained
1 can corn, drained
1 can diced tomatoes, with juice
1 can tomato sauce or crushed tomatoes
1.5 tbsp chili powder
1 tsp cumin
2 tsp onion powder
2 tsp garlic powder
2 tsp salt
1/2 tsp pepper
2 tsp lime
cheddar cheese, for topping
sour cream, for topping
optional: minced garlic
optional: onion
optional: ground meat',
        'Saute onion or garlic, if using.
Add everything else to a pot.
Simmer 15-20 minutes, stirring occasionally.
Serve with rice, bread, or tortilla chips.',
        'main course
chili
beans
vegetarian'
    ),
    (
        (SELECT id FROM categories WHERE name = 'sauce'),
        'Erlon’s Brazillian Vinaigrette',
        'homemade',
        NULL,
        'That’s it! Easy! It’s ready to be piled on top of your grilled meats. The recipe card also lists Zhoug Sauce (Trader Joe’s).',
        'tomato
green bell pepper
red bell pepper
onion
olive oil
salt
parsley
vinegar
Zhoug Sauce (Trader Joe’s)',
        'Combine finely diced tomatoes, onions and bell peppers with minced parsley.
Add oil and vinegar, salt, pepper and Zhoug, and toss to combine.',
        'sauce
vinaigrette
brazilian
grilled meats'
    ),
    (
        (SELECT id FROM categories WHERE name = 'sauce'),
        'Lemon Dill Sauce',
        'external',
        NULL,
        'From Easy Baked Salmon with Lemon Dill Sauce by Kathi & Rachel. The PDF instruction was to archive the Lemon Dill Sauce only, not the baked salmon. The source recipe describes this as an easy-to-make weeknight meal with healthy, fresh and bright flavor.',
        '1/3 cup Greek yogurt
2 tbsp mayonnaise
1.5 tbsp dill (chopped if using fresh; the source uses freeze dried but says fresh works well too)
2 tbsp lemon juice
1 tsp lemon zest
1 tsp granulated garlic
salt and pepper to taste',
        'Mix together the dill sauce ingredients.
Set aside.',
        'sauce
lemon
dill
salmon'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Cilantro Lime Rice',
        'homemade',
        NULL,
        NULL,
        '1 cup basmati rice
2 cups water
1 tbsp olive oil or vegetable oil
1 tsp salt, plus more to taste
3 tbsp chopped cilantro
2 tbsp lime juice (about 1 lime)',
        'Add rice, water, oil, and salt to the rice cooker.
Cook until the rice is tender and the water is fully absorbed.
Transfer the cooked rice to a large bowl and fluff it with a fork.
Stir in the chopped cilantro and lime juice.
Add extra salt to taste and serve.',
        'side
rice
cilantro
lime'
    ),
    (
        (SELECT id FROM categories WHERE name = 'side'),
        'Bean, Corn, & Pepper Salad',
        'external',
        NULL,
        'Prep: 15 minutes. Cook: 15 minutes. Yields: 4 servings. Optional: crushed tortilla chips for serving.',
        '2 cups (200g) diced red bell pepper
1 1/4 cups (168g) frozen sweet corn
2 (15-ounce) cans low-sodium black beans, drained and rinsed, or 3 cups cooked (510g)
1/4 cup (60g) fresh lime juice
1 tablespoon (20g) pure maple syrup
1 teaspoon (2.5g) chili powder
1/2 teaspoon (1.5g) ground cumin
1/8 teaspoon fine salt
1 medium avocado (150g), chopped
optional: crushed tortilla chips for serving',
        'Combine all ingredients and enjoy with tortilla chips',
        'side
salad
beans
corn
pepper
vegetarian'
    );
