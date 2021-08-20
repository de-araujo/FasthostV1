$(document).ready(() => {
    $(".sidenav").sidenav();
});

document.getElementById("switchDarkTheme").onchange = () => {
    if (localStorage.getItem("theme") != "dark") {
        localStorage.setItem("theme", "dark");
        document.documentElement.setAttribute("data-theme", "dark");
    } else {
        localStorage.setItem("theme", "light");
        document.documentElement.removeAttribute("data-theme");
    }

}

window.onload = () => {
    if (localStorage.getItem("theme") == "dark") {
        document.documentElement.setAttribute("data-theme", "dark");
        document.getElementById("switchDarkTheme").checked = true;
    } else {
        document.documentElement.removeAttribute("data-theme");
    }
}