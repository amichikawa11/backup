
//問1
for(var a = 0; a < 5; a++){
    document.write("★");
}

document.write("<br><br><br>");

//問2
for(var b = 0; b < 2; b++){
    for(var c = 0; c < 3; c++){
        document.write("★");
    }document.write("<br>");
}

document.write("<br><br><br>");

//問3

for(var d= 0; d <=1; d++){
    for(var e = 0; e<=4; e++){
        document.write("☆");
    }document.write("<br>");
}

document.write("<br><br><br>");

//問4

for(var f = 0; f <4; f++){
    for(var g = 0; g <5; g++){
        document.write("★");
    }document.write("<br>");
}

document.write("<br><br><br>");


//問5
for(var h =4; h>0; h--){
    for(var i =3; i > 0; i--){
        document.write("★");
    }document.write("<br>");
}

document.write("<br><br><br>");

//問6
for(var abc = 0; abc <2; abc++){
    for(var xyz = 0; xyz < 3; xyz++){
        if(xyz % 2 == 0){
        document.write("☆");
    }else{document.write("★");}
}document.write("<br>");
}

document.write("<br><br><br>");

//問7

for(var r = 1; r <5; r++){
    for(var s = 1; s<6; s++){
        if(s % 2 == 0){
            document.write("☆");
        }else{
            document.write("★");
        }
    }document.write("<br>");
}

document.write("<br><br><br>");


//問8

for(var star = 0; star <6; star++){
    for(var star2 =0; star2 <star; star2++){
        document.write("★");
    } 

document.write("<br>");
}

document.write("<br><br><br>");

//問8別解
for(var ab = 0; ab <=4; ab++){
    for(var bc =0; bc <=4; bc++){
        document.write("★");
        if(bc == ab){
            document.write("<br>");
            break;
        }
    }
}


document.write("<br><br><br>");



//関数1
document.write("<br><br><br>");


function circle(half,r=3.14){
    return (half*half)*r + "<br>";
}

document.write(circle(5));
document.write(circle(7));

//関数2

function totalPrice(team,adult,child,ap=500,cp=200){
    return team+"グループの合計は"+(adult*ap + child*cp)+"円です<br>";
}

document.write(totalPrice("A",2,4));
document.write(totalPrice("B",1,5));
document.write(totalPrice("C",3,7));





