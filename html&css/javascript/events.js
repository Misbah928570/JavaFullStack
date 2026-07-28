function message(){
    alert("double clicked");
}
function changecolor(){
    document.getElementsByClassName("mouseover")[0].style.color="red";
}
function blue(){
    document.getElementById("demo").style.color="blue";
}
function show(){
    let data=document.getElementById("name").value
    document.getElementById("output").innerText=data;

} 