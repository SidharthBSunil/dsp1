Sidharth:
clc;

3 clear all;

4 close;

5 x = input('enter x seq');

6 m length (x);

7 x1 = input('enter lower index xl seq');

8

xh=xl+m -1;

9

n=xl :1: xh;

10 subplot (3,1,1);

11 a gca ();

12 a.x_location = "origin";

13 a.y_location = "origin";

14 a. foreground = 5;

15 a. font_color = 5;

16

a. font style = 5;

17

plot2d3('gnn',n,x)

plot2d3('gnn',n,x)

18 xlabel('Time Index-n---->')

19 ylabel('Amplitude xn-->')

20 title('Input Sequence')

21h = input('enter impulse seq');

I

22 p= length (h);

23 hl = input('enter lower index impulsehl seq');

24 hh-hl+p -1;

25 g=hl :1: hh;

26 subplot (3,1,2);

27 a gca();

28 a.x location = "origin";

29 a.y location = "origin";

30 a. foreground = 5;

31 a. font color = 5;

32 a. font_style = 5;

33 plot2d3('gnn',g,h)

plot2d3('gnn',g,h)

34 xlabel('Time Index-n---->')

35 ylabel('Amplitude xn---->')

I

36 title('Impulse Sequence')

37 N=m+p-1;

38 h1 [h zeros(1, N-m)]

39 n3 length (hl);

40 y= zeros (1,N);

41 x1=[zeros(1,n3-p), x, zeros (1,n3)];

42 H= fft (h1);

43 for i=1:p:N

44 y1=xl (i:i+(2*(n3p)));

45 y2=fft (y1);

46 y3 y2.*Η;

47 y4= round(ifft(y3));

48 y(i:(i+n3 -p))=y4 (p:n3);

49 end

end

50 disp('Output sequence using overlap save method'

51 disp (y (1:N));

52 nx=xl+hl;

53 r=nx: length (y) -1;

54 subplot (3,1,3);

55 a gca();

56 a.x_location = "origin";

57 a.y_location = "origin";

58 a. foreground = 5;

59 a. font color = 5;

60 a. font_style = 5;

61 plot2d3('gnn',r,y)

62 xlabel('Time Index n---->')

63 ylabel('Amplitude xn---->')

64 title('output using overlap save method')