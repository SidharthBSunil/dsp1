clc;
clear all;
close;
x=input("enter x seq")
h=input("enter h seq")
m=length(x)
n=length(h)
for i=1:n-m+1
    disp(i)
    sum=0
    for j=1:i
        disp(j)
        if((i-j+1)<n&(j<m))
            sum=sum+(x(j).*h(i-j+1))
end
y(i)=sum
end
end
disp('con is',y')
