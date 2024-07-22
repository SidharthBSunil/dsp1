//impulse
clc;clear all;clf
x=-10:10
subplot(3,2,1)
y=[zeros(1,10) ones(1,1) zeros(1,10)]
plot2d3(x,y)
title("unit i")
xlabel("t")
ylabel("a")

//unit
y1=[zeros(1,10) ones(1,11)]
subplot(3,2,2)
plot2d3(x,y1)
title("")
xlabel("")
ylabel("")

//ramp
y2=1:10
n=1:10
y3=n
subplot(3,2,3)
plot2d3(n,y3)
title("")
xlabel("")
ylabel("")
//sine
x1=0:2.*%pi/100:2*%pi
y4=sin(x1)
subplot(3,2,4)
plot2d3(x1,y4)
