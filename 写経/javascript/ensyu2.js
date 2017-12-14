for(var t1=0; t1<5; t1++){
    document.write("★");
}

document.write("<br><br>");

for(var t2=0; t2<2; t2++){
    for(var t2b=0; t2b<3; t2b++){
        document.write("★");
    }document.write("<br>");
}

document.write("<br><br>");

for(var t3=0; t3<=1; t3++){
    for(var t3b=0; t3b<=4; t3b++){
        document.write("☆");
    }document.write("<br>");
}

document.write("<br><br>");

for(var t4=0; t4<=3; t4++){
    for(var t4b=0; t4b<=4; t4b++){
        document.write("★");
    }document.write("<br>");
}


document.write("<br><br>");

for(var t5=0; t5<4; t5++){
    for(var t5b=0; t5b<3; t5b++){
        document.write("★");
    }document.write("<br>");
}

document.write("<br><br>");


for(var t6=0; t6<=2; t6++){
    for(var t6b=0; t6b<=2; t6b++){
        if(t6b % 2 == 0){
            document.write("★");
        }else{
            document.write("☆");
        }
    }document.write("<br>");
    }

document.write("<br><br>");

for(t7=0; t7<=3; t7++){
    for(t7b=0; t7b<=4; t7b++){
        if(t7b % 2 ==0){
            document.write("★");
        }
    else{
        document.write("☆");
    }
}document.write("<br>");
}

document.write("<br><br>");

for(var t8=0; t8<6; t8++){
    for(var t8b=0; t8b<t8; t8b++){
        document.write("★");
    }document.write("<br>");
}


document.write("<br><br>");

for(var t8c=0; t8c<=4; t8c++){
    for(var t8d=0; t8d<=4; t8d++){
        document.write("★");
        if(t8c == t8d){
    document.write("<br>");
        break;
}
    }
}

document.write("<br><br>");

function circle(h,r=3.14){
    return h*h*r + "<br>";
}

document.write(circle(5));
document.write(circle(7));

document.write("<br><br>");

function totalPrice(adult,child){
    return adult*500+child*200 +"円です<br>";
}

document.write(totalPrice(2,4));
document.write(totalPrice(1,5));
document.write(totalPrice(3,7));




    
    