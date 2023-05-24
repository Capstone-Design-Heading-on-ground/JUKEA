const sulbtiButton = document.getElementById("sulbtiButton");
const selectButtons = document.getElementsByClassName("btn-10");

sulbtiButton.addEventListener("click", function(e) {
    e.preventDefault;

    sulbtiButton.classList.remove("bounce");

    sulbtiButton.offsetWidth = sulbtiButton.offsetWidth;

    sulbtiButton.classList.add("bounce");

    for(var i=0; i<selectButtons.length; i++){
        var selectButton = selectButtons.item(i);
        selectButton.style.display = "block";
        selectButton.classList.remove("appear");
        selectButton.offsetWidth = selectButton.offsetWidth;
        selectButton.classList.add("appear");
    }

}, false);