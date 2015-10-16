$(function() {
  $("form").on("submit", function(e) {
    e.preventDefault();
    // 1. Make an asynchronous HTTP request (POST /items)
    $.ajax({
      url: "/items",
      method: "POST",
      dataType: 'JSON',
      data: $("form").serialize(),
      success: function(response) {
        console.debug(response)
        // 2. Update the DOM (add a new list item)
        $("ul").append("<li>" + response.content + "</li>");
        // 3. Clear the form field
        $("#content").val("");
      },
      error: function(response) {
        window.alert("Yikes!");
        console.debug(response);
      }
    });
  });
})
