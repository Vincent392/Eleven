/*
 * eleven.js
 * Description: Eleven programming language web implementation
 * Created on: Friday 14th June 2024 @ 20:21
 * Author(s): Vincent392, datkat21 (Kat21)
 */

function init11pl() {
    console.log("Eleven Programming Language");
    console.log("WEB EDITION");
}

function print(logtext) {
    console.log(logtext);
}

function loadpage(page) {
    window.location.replace(page);
}

function jsload(jsfile, function) {
     console.log("Loading JavaScript file:" + jsfile + "function:" + function + "");
}
