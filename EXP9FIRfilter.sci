//program to design a FIR pass filter- window based
//technique
clear all;
clc;
close;
M=7                 //Filter length =7
wc = %pi/4
tuo =(M-1)/2
for n=1:M
    if(n==tuo+1)
        hd(n)=wc/%pi;
    else
        hd(n)=sin(wc*((n-1)-tuo))/(((n-1)-tuo)*%pi);
    end        
end
//rectangular window
for n=1:M
    w(n)=1;
end
//windowing filter coefficients
h=hd.*w;
disp('filter coefficients are',h)

[hzm,fr]=frmag(h,256)
hzm_dB=20*log10(hzm)./max(hzm);
plot(fr,hzm_dB)
xlabel('normalized digital frequency w');
ylabel('magnitude in dB');
title('frequency response of FIR using rectangular window M=7')
