var docVersion;
$(document).ready(function () {
    getAllVersions();
    docVersion = $(".fa-home")[0].href.replace(new RegExp(".*/(.*?)/"), "$1");
    handleGitHubUrl();
});

// This function creates the correct url to link to the file's page on github
function handleGitHubUrl(){
    let ver = ".*/"+ getCurrentVersion();
    let cur = "/" + getCurrentVersion();
    if($("#objclass")[0]){
        let objclass = $("#objclass")[0].value;
        let newurl = $("#ghlink")[0].href;
         // Build the url properly to match the repository
        newurl = newurl.replace("convertigo-doc","convertigo");

        if(location.href.includes("mobile-application/components")){
            newurl += "/develop/engine/src/com/twinsoft/convertigo/beans/mobile/components/dynamic/ion_objects.json";
            $("#ghlink")[0].href = newurl;
        }
        else{
            objclass = objclass.replace(new RegExp(/[^a-zA-Z]/g),"/");
            objclass = objclass.replace(new RegExp(/(.*?\/beans\/(.*)\/)/gi),"$1res/");
            newurl += "/develop/engine/src/" + objclass + ".properties";
            $("#ghlink")[0].href = newurl;
        }
    }
    else{
        $("#ghlink")[0].href += location.pathname.replace(new RegExp(ver),cur);
        if(location.pathname.includes("index.html"))
            $("#ghlink")[0].href += $("#ghlink")[0].href.replace("index.html","index.md");
        else
            $("#ghlink")[0].href += "index.md";
    }
}

function getCurrentVersion() {
    return docVersion;
}

function getAllVersions(){
    $.getJSON($(".fa-home")[0].href + "../index.php","v=k").done(function(res){
        createComboBoxWithJSON(res);
    });    
}

function createComboBoxWithJSON(json){
    if(json == "")
        console.log("Can't read the JSON"); 
    else{
        let select = document.createElement("select");
        select.id = "vselect";
        select.className = "navselect";

        for(var i in json){
            let option = document.createElement("option");
            option.textContent = json[i];
            if(json[i] == getCurrentVersion())
                option.setAttribute("selected","selected");
            select.options.add(option);
        }
        $(select).on("change", function () {
            let currVersion = getCurrentVersion();
            let selectedVersion = select.selectedOptions[0].innerHTML;
            location.href = location.href.replace("/" + currVersion + "/", "/" + selectedVersion + "/");
        });
        let versionDiv = document.getElementById('versions');
        versionDiv.appendChild(select);
    }
}