for(var t1=0; t1<=4; t1++){
    for(t1b=0; t1b<=4; t1b++){
        document.write("★");
    }document.write("<br>");
}


document.write("<br><br><br>");

var a =1;
while(a<=25){
    if(a % 2 == 0){
        document.write("☆");
    }else{
        document.write("★");
    }
    if(a % 5 == 0){
        document.write("<br>");
    }
    a++;
}

document.write("<br><br><br>");

for(var i=; i<; i++){
    for(var y=; y<5; y++){
        var star =(i + y)%2 == 0?'★':'☆';
    }
}