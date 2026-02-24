var docVersion;
$(document).ready(function () {
	getAllVersions();
	docVersion = getDocVersion();
	handleGitHubUrl();
});

function getDocVersion() {
	const fromPath = location.pathname.match(/\/documentation\/([^/]+)\//);
	if (fromPath && fromPath[1]) {
		return fromPath[1];
	}
	const home = $(".fa-home")[0];
	if (home && home.href) {
		const fromHome = home.href.replace(new RegExp(".*/(.*?)/"), "$1");
		if (fromHome && !fromHome.includes(":") && fromHome !== ".." && fromHome !== ".") {
			return fromHome;
		}
	}
	return "develop";
}

// This function creates the correct url to link to the file's page on github
function handleGitHubUrl() {
	if (!$("#ghlink")[0]) {
		return;
	}
	let gitVersion = docVersion;
	if (gitVersion == "latest") {
		gitVersion = "master";
	} else if (gitVersion.startsWith("hotfix-")) {
		gitVersion = gitVersion.replace("-", "/");
	}
	if ($("#objclass")[0]) {
		let objclass = $("#objclass")[0].value;
		let newurl = $("#ghlink")[0].href;
		 // Build the url properly to match the repository
		newurl = newurl.replace("convertigo-doc","convertigo");

		if (location.href.includes("mobile-application/components")) {
			if (objclass == "ion_objects.json") {
				newurl += "/" + gitVersion + "/engine/src/com/twinsoft/convertigo/beans/mobile/components/dynamic/ion_objects.json";
			} else {
				objclass = objclass.replace(new RegExp(/[^a-zA-Z]/g),"/");
				newurl += "/" + gitVersion + "/engine/src/" + objclass + ".properties";
			}
			$("#ghlink")[0].href = newurl;
		} else {
			objclass = objclass.replace(new RegExp(/[^a-zA-Z]/g),"/");
			objclass = objclass.replace(new RegExp(/(.*?\/beans\/(.*)\/)/gi),"$1res/");
			newurl += "/" + gitVersion + "/engine/src/" + objclass + ".properties";
			$("#ghlink")[0].href = newurl;
		}
	} else {
		let baseUrl = $("#ghlink")[0].href.replace(/\/+$/, "");
		baseUrl = baseUrl.replace(/\/tree(?:\/.*)?$/, "/tree");

		let mdPath = location.pathname;
		const versionPrefix = "/documentation/" + docVersion + "/";
		if (mdPath.startsWith(versionPrefix)) {
			mdPath = "/" + mdPath.substring(versionPrefix.length);
		}
		if (mdPath.endsWith("index.html")) {
			mdPath = mdPath.replace(/index\.html$/, "index.md");
		} else if (mdPath.endsWith("/")) {
			mdPath += "index.md";
		} else if (!mdPath.endsWith(".md")) {
			mdPath += "/index.md";
		}
		$("#ghlink")[0].href = baseUrl + "/" + gitVersion + mdPath;
	}
}

function getCurrentVersion() {
	return docVersion;
}

function getAllVersions() {
	$.get("https://c8o-documentation.s3.eu-west-3.amazonaws.com/", {delimiter:"/", prefix:"documentation/"}, function(xml) {
		var versions = $(xml).find("Prefix").map(function(d) { var t = this.textContent; return t.substring(14, t.length -1) }).get();
		versions.shift();
		createComboBoxWithJSON(versions);
	});
}

function createComboBoxWithJSON(json) {
	if (json == "") {
		console.log("Can't read the JSON"); 
	} else {
		let select = document.createElement("select");
		select.id = "vselect";
		select.className = "navselect";

		for (var i in json) {
			let value = json[i];
			if (value != "master") {
				let option = document.createElement("option");
				option.textContent = json[i];
				if (json[i] == getCurrentVersion()) {
					option.setAttribute("selected", "selected");
				}
				select.options.add(option);
			}
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
