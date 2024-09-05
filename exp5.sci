
clc;
clear all;
close ;
x=input('enter x seq')
m=length(x)
h=input('enter impulse seq')
p=length(h)
N=m+p-1
h1=[h zeros(1,N-m)]
n3=length(h1)
y=zeros(1,N)
x1=[zeros(1,n3-p),x,zeros(1,n3)]
H=fft(h1)
for i=1:p:N
    y1=x1(i:i+(2*(n3-p)))
    y2=fft(y1)
    y3=y2.*H
    y4=round(ifft(y3))
    y(i:(i+n3-p))=y4(p:n3)
end
disp('Output sequence using overlap save method')
disp(y(1:N))
xh=m-1
n=0:1:xh
subplot(3,1,1)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.foreground=5
a.font_color=5
a.font_style=5
plot2d3('gnn',n,x)
xlabel('Time Index n--->')
ylabel('Amplitude xn---->')
title('Input Sequence')
hh=p-1
g=0:1:hh
subplot(3,1,2)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.foreground=5
a.font_color=5
a.font_style=5
plot2d3('gnn',g,h)
xlabel('Time Index n--->')
ylabel('Amplitude xn--->')
title('Impluse Sequence')

r=0:length(y)-1
subplot(3,1,3)
a=gca()
a.x_location="origin"
a.y_location="origin"
a.foreground=5
a.font_color=5
a.font_style=5
plot2d3('gnn',r,y)
xlabel('Time Index n--->')
ylabel('Amplitude xn-->')
title('output using overlap save method')
