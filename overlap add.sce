//block convolution using overlap add methord
clc;
clear all;
close;
x=input('enter x seq');
m=length(x);
xl=input('neter lower index x1 seq');
xh=xl+m -1;
n=xl:1:xh;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3('gnn',n,x)
xlabel('time index n---->')
ylabel('amplitude xn---->')
title('input seq')
h=input('enter input seq');
p=length(h);
hl=input('enter lower index impulse h1 seq');
hh=hl+p-1;
g=hl:1:hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3('gnn',g,h)
xlabel('time index n---->')
ylabel('amplitude xn---->')
title('impulse seq')
N=m+p-1;
h1=[h zeros(1,p-1)]
n3=length(h1);
//y=zeros(1,N)
a=n3-p
y=zeros(1,N+n3-p);
H=fft(h1,-1);
for i=1:p:m
    if i<=(m+p-1)
        x1=[x(i:i+a) zeros(1,a)];
    else 
        x1=[x(i:m) zeros(1,a)];
    end
    x2=fft(x1,-1);
    x3=x2.*H;
    x4=round(fft(x3,1));
    if (i==1)
        y(1:n3)=x4(1:n3);
    else
        y(i:i+n3-1)=y(i:i+n3-1)+x4(1:n3);
        end
end
disp('output seq using overlap add method')
disp(y(1:N));
n4=length(y);
nx=xl+hl;
r=nx:n4-1;
subplot(3,1,3)
a=gca();
a.x_location="origin";
a.y_location="origin";
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3('gnn',r,y)
xlabel('time index n---->')
ylabel('amplitude xn---->')
title('output using overlap add methord')
