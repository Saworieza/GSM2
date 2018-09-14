jQuery(function() {
  var stages;
  stages = $('#contractorinvoice_stage_id').html();
  console.log(stages);
  return $('#contractorinvoice_milestone_id').change(function() {
    var milestone, options;
    milestone = $('#contractorinvoice_milestone_id :selected').text();
    options = $(stages).filter("optgroup[label=" + milestone + "]").html();
    console.log(options);
    if (options) {
      return $('#contractorinvoice_stage_id').html(options);
    } else {
      return $('#contractorinvoice_stage_id').empty();
    }
  });
});
