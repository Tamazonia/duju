// $(function(){


//   $(".tab").on("click", function(e){
//     // e.preventDefault();
//     // remove active from all tabs
//     $(".tab").removeClass("active");
//     $(this).addClass("active");  // this activates the profile tab    // Change active tab
//     // hide content of all tabs
//     $(".tab-content").addClass("hidden");
//     // target one specific tab
//     var tableSelector = $(this).data('target')
//     $(tableSelector).removeClass("hidden");
//   });

// });


(function(){


  document.getElementsByClassName(".tab").on("click", function(e){
    // e.preventDefault();
    // remove active from all tabs
    document.getElementsByClassName(".tab").removeClass("active");
    document.getElementsByClassName(this).addClass("active");  // this activates the profile tab    // Change active tab
    // hide content of all tabs
    document.getElementsByClassName(".tab-content").addClass("hidden");
    // target one specific tab
    var tableSelector = document.getElementsByClassName(this).data('target')
    document.getElementsByClassName(tableSelector).removeClass("hidden");
  });

});
