function stringlength() {
    var x = document.getElementById("ContentPlaceHolder1_Message").value;
    var y = x.length;
    if (y < 15 || y > 500) {
        alert('Message length must be between 20 and 300 characters');
        return false;
    }
}
