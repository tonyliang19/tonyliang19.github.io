var btn = document.querySelector("button");

window.addEventListener("scroll", function() {
  // Get the current scroll position
  var scrollPos = window.scrollY;

  // Set the button's position based on the scroll position
  btn.style.top = scrollPos + "px";
});