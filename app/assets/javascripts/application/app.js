$(document).ready(function() {
  $('#company-selector').on('change', getPriceJSON)
});

var getPriceJSON = function(e) {
  var companyId = $(e.currentTarget).val()
  var url = "/companies/" + companyId + "/prices"
  $.getJSON(url, function(res){
    res.forEach(function(price){
      $("#price-area").append(price.date +" -- $"+ price.price)
      $("#price-area").append("</br>")
    })

  })
}
