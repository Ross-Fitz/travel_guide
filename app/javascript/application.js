// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

var form = document.getElementById("form-id");

document.getElementById("comment").addEventListener("click", function () {
  form.submit();
});