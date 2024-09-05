// Block convolution using overlap save methodclc;
clc
clear all;
close;
x=input('enter x seq');
m=length(x);
x1=input('enter lower index x1');
xh=x1+m-1;
n=x1:1:xh;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
a. foreground=5;
a. font_color=5;
a. font_style=5;
plot2d3('gnn',n,x)
xlabel('time index n---->')
ylabel('Amplitude xn---->')
title('input sequence')
h=input('enter impulse seq');
p=length(h);
h1=input('enter lower index impulse h1 seq');
hh=h1+p-1;
g=h1 :1: hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
a. foreground=5;
a. font_color=5;
a. font_style=5;
plot2d3('gnn',g,h)
xlabel('time index n ---->');
ylabel('Amplitude xn---->')
title('impulse sequence')
N=m+p-1;
h1=[h zeros(1,N-m)]
n3=length (h1);
Y=zeros(1,N);
x1=[zeros(1,n3-p),x,zeros(1,n3)];
H=fft(h1);
for i=1:p:N
    y1=x1(i:i+(2*(n3 -p)));
    y2=fft(y1);
    y3=y2.*H;
    y4=round(ifft(y3));
    y(i:(i+n3-p))=y4(p:n3);
end
disp('output sequence using overlap save method')
disp(y(1:N));
h1_p=[h1, zeros(1, length(x1) - length(h1))];
nx=x1+h1_p;
ny=length(nx)
r=ny:length(y)-1;
subplot(3,1,3);
a=gca();
a.x_location="origin";
a.y_location="origin";
a. foreground=5;
a. font_color=5;
a. font_style=5;
plot2d3('gnn',r,y)
xlabel('time index n ---->')
ylabel('Amplitude xn---->')
title('output using overlap save method')
