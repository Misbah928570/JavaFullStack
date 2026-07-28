let a=29;
console.log(a);

let c;
c=80; //reassigned
console.log(c);

const b=30;
console.log(b);

var h=35;
var h=90; //redeclared
h=120; //reassigned
console.log(h);

function demo(){
    if(true){
        var i=1;
        let j=10;
        console.log(j);
    }
    console.log(i);
}
demo();