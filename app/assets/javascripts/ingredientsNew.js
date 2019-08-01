
// code for drop down menu
$(document).ready(function(){

  const mealsDropDown = $(".mealsDropDown")
  const meals = new Set()
  let meal = ''

  // meal name
  mealsDropDown.change(function () {

    // get meal text
    meal = $(this).find('option:selected').text()

    // create hidden input if hasn't been selected before, otherwise change existing hidden input
    if (meals.has(meal)){
      //pass
    } else {
      // meal name
      $('<input>').attr({
        type: 'hidden',
        id: `${meal.split(" ").join("_")}`,
        name: `meals[]`,
        value: `${meal}`
      }).appendTo('form');

    };

    // don't create new hidden input if already been seen
    meals.add(meal)

    // show Measurement
    $(".addQuantitiesForm").show();

  });

  // add measurement and unit of measurement to hidden input value
  $(`[name="button"]`).on("click", function () {

    meal_id = `#${meal.split(" ").join("_")}`

    $(meal_id).val(meal + "_" + $(`[name="measurement"]`).val() + "_" + $(`[name="unit_of_measurement"]`).val())
    console.log($(`#${meal}`))

    // hide measurement
    $(".addQuantitiesForm").hide();

  });

  // error checking
  console.log($(this).find('option:selected').text())

});
