$(document).ready(function() {
  $('#create_survey').on('submit', function(e){

    e.preventDefault()

    console.log("question form")

    form_data=$(this).serialize()
    $.ajax({
      url:this.action,
      type:this.method,
      data:form_data
    }).done(function(server_data){
      console.log("success " + server_data)
      $('.survey').append(server_data)
      document.querySelector('#create_survey').reset()

    }).fail(function(){
      console.log("fail")
    })

  });

});




  // $('#cat').click(function () {
  //   // add loading image to div
  //   $('#loading').html('<img src="http://preloaders.net/preloaders/287/Filling%20broken%20ring.gif"> loading...');

  //   // run ajax request
  //   $.ajax({
  //       type: "GET",
  //       dataType: "json",
  //       url: "https://api.github.com/users/jveldboom",
  //       success: function (d) {
  //           // replace div's content with returned data
  //           // $('#loading').html('<img src="'+d.avatar_url+'"><br>'+d.login);
  //           // setTimeout added to show loading
  //           setTimeout(function () {
  //               $('#loading').html('<a href="http://thecatapi.com"><img src="http://thecatapi.com/api/images/get?format=src&type=gif"></a><br>');
  //           }, 2000);
  //       }
  //   });

// $(document).ready(function() {

//   $('#create_cat').on('submit', function(e){
//     e.preventDefault()
//     console.log("cat form")
//     form_data=$(this).serialize()
//     $.ajax({
//       url:this.action,
//       type:this.method,
//       data:form_data
//     }).done(function(server_data){
//       console.log("success " + server_data)
//       $('.cats').append(server_data)
//       document.querySelector('#create_cat').reset()

//     }).fail(function(){
//       console.log("fail")
//     })
//   })




// });
