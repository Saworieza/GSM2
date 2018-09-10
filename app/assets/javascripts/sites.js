jQuery(function() {
  var towns;
  towns = $('#site_town_id').html();
  console.log(towns);
  return $('#site_region_id').change(function() {
    var region, options;
    region = $('#site_region_id :selected').text();
    options = $(towns).filter("optgroup[label=" + region + "]").html();
    console.log(options);
    if (options) {
      return $('#site_town_id').html(options);
    } else {
      return $('#site_town_id').empty();
    }
  });
});


// jQuery(function() {
//   var towns;
//   $('#site_town_id').parent().hide();
//   towns = $('#site_town_id').html();
//   console.log(towns);
//   return $('#site_region_id').change(function() {
//     var region, escaped_region, options;
//     region = $('#site_region_id :selected').text();
//     escaped_region = region.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
//     options = $(towns).filter("optgroup[label=" + escaped_region + "]").html();
//     console.log(options);
//     if (options) {
//       $('#site_town_id').html(options);
//       return $('#site_town_id').parent().show();
//     } else {
//       $('#site_town_id').empty();
//       return $('#site_town_id').parent().hide();
//     }
//   });
// });

