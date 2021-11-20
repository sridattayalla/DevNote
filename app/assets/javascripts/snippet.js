$(document).ready(function () {
alert("in");
$("#snippet_code").bind('input propertychange', function () {
    let inHtml = $("#snippet_code").val();
    if($("#snippet_code").val() == ""){
        inHtml = "//Write code here";
    }
    document.getElementById("prev-code").innerHTML = PR.prettyPrintOne(inHtml);
})
});

window.alert("out")