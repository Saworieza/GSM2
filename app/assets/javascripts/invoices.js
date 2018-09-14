jQuery(function() {
  var stages;
  stages = $('#invoice_stage_id').html();
  console.log(stages);
  return $('#invoice_milestone_id').change(function() {
    var milestone, options;
    milestone = $('#invoice_milestone_id :selected').text();
    options = $(stages).filter("optgroup[label=" + milestone + "]").html();
    console.log(options);
    if (options) {
      return $('#invoice_stage_id').html(options);
    } else {
      return $('#invoice_stage_id').empty();
    }
  });
});
