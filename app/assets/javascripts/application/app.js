$(document).ready(function() {
  $('#company-selector').on('change', handleChange)

  getPriceJSON($('#company-selector').val())
});

var handleChange = function(e) {
  var companyId = $(e.currentTarget).val()
  history.pushState({}, "", "/companies/3");
  getPriceJSON(companyId)
}

var getPriceJSON = function(companyId) {
  var url = "/companies/" + companyId + "/prices"
  $.getJSON(url, function(res){
    $("#price-area").html('HERE IS DATA - WOULD BE HANDLED BY JS VISUALIZATION LIBRARY</br>')
    res.forEach(function(price){
      $("#price-area").append(price.date +" -- $"+ price.price)
      $("#price-area").append("</br>")
    })

  })
}
