$(document).ready(function() {

  var hello = getPriceJSON(1)
});

var getPriceJSON = function(companyId) {
  var url = "/companies/" + companyId + "/prices"
    $.ajax({
      url: url,
      dataType: 'json',
      success: function(res) {
        console.log(res)
      }
    })
}
