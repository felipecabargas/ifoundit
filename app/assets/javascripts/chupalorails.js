$(document).ready(function (){
  $("#report_item_type").change(function() {
    // foo is the id of the other select box 
    if ($(this).val() == "Pet") {
      $(".person").hide();
      $(".pet").show();
      $(".object").hide();
    }else if ($(this).val() == "Object"){
      $(".person").hide();
      $(".pet").hide();
      $(".object").show();
    }else if ($(this).val() == "Person"){
      $(".person").show();
      $(".pet").hide();
      $(".object").hide();
    }else{
      $(".person").hide();      
      $(".pet").hide();
      $(".object").hide();
    } 
  });
});
