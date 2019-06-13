
%斯蒂芬森迭代法
f=@(x)((x+1)^(1/3))
x0=5;
%或者phi x直接等于f(x)
phi=@(x)(x-((f(x)-x)^2)/(f(f(x))-2*f(x)+x));
e=1;
while e>0.00001
    x1=phi(x0);
    e=abs(x1-x0);
    x0=x1;
end
x1

