clear all;
clc;
close;
M = 7
Wc  = %pi/4;
Tuo = (M-1)/2
for n = 1:M
    if (n == Tuo+1)
        hd(n) = Wc/%pi;
    else
        hd(n)= sin(Wc*((n-1)-Tuo))/(((n-1)-Tuo)*%pi);
    end    
end
h=2/(M-1);
for n = 1:M
    W(n) = 0.54+0.46.*(cos(n.*%pi.*h));
end
h =hd.*W;
disp('filter coefficients are',h)
h;
[hzm,fr]=frmag(h,256);
hzm_dB = 20*log10(hzm)./max(hzm);
plot(fr,hzm_dB)
xlabel('normalized digital frequency W');
ylabel('magnitude in dB');
title('frequency response of FIR LPF using hamming window M=7')
