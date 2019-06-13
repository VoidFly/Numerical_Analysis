format long
f=@(x)(sin(x)/x);
f0=1;

e=1;
t1=0.5*(f0+f(1));
t2=0;
%变步长求积分
b=1;
a=0;
h=b-a;
n=1;
x0=0;
sum=0;
while e>0.0000001
    
    for i=1:2:2^n
        sum=sum+f((b-a)*(i/2^n)+x0);
    end
    t2=0.5*t1+(h/2)*(sum);
    e=t2-t1;
    t1=t2;
    n=n+1;
    h=h/2;
    sum=0;
end

t2
    

