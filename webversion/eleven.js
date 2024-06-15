/*
 * eleven.js
 * Description: Eleven programming language web implementation core
 * Created on: Friday 14th June 2024 @ 20:21 (Irish Standard Time)
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
    print("Loading page: " + page);
}

function jsloadpage(jsfile, function, async = true) {
     print("Loading JavaScript file " + jsfile);
     //console.log("Loading JavaScript file: " + jsfile + "function:" + function + "");
     let jsfileload = document.createElement("script");


     jsfileload.setAttribute("src", jsfile);
     jsfileload.setAttribute("type", "text/javascript");
     jsfileload.setAttribute("async", async);

     document.body.appendchild(jsfileload);
     
     jsfileload.addEventListener("load", () => {
     print("Loaded Javascript file successfully: " + jsfile)
    });
    
    jsfileload.addEventListener("error", (ev) => {
    print("Failed to load JavaScript file: " + jsfile);
    print("ERROR: ", ev);
    });
}
