%解方程 牛顿 截弦法
e=1;
x0=2;
f1=@(x)(x^3-2*x-2);
f2=@(x)(3*x^2-2);
%newton
while e>0.00001
    x1=x0-f1(x0)/f2(x0);
    e=abs(x1-x0);
    x0=x1;
end
x1
%Secant
e=1;
x0=0;
x1=1;

while e>0.000001
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    e=abs(x2-x1);
    x0=x1;
    x1=x2;
end

x2
    
