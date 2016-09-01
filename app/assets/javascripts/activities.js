var selection = {
  group_size: "",
  budget: "",
  type: ""
};

$(document).ready(function() {
  $("body").on("click", ".selection1", function(event) {
    selection.group_size = $(this).data("groupsize");
    console.log(selection);
    $(".selection1").removeClass("pick");
    $(this).addClass("pick");
  });

  $("body").on("click", ".selection2", function(event) {
    selection.budget = $(this).data("budget");
    console.log(selection);
    $(".selection2").removeClass("pick");
    $(this).addClass("pick");
  });

  $("body").on("click", ".selection3", function(event) {
    selection.type = $(this).data("type");
    console.log(selection);
    $(".selection3").removeClass("pick");
    $(this).addClass("pick");
  });

  $("body").on("click", "#btn", function() {
    $("#opt1").val(selection.group_size);
    $("#opt2").val(selection.budget);
    $("#opt3").val(selection.type);
    // console.log();
  });

  // This is where you need your event listener which will assign the variables in the selection object to the hidden fields' 'value' attributes.


});
