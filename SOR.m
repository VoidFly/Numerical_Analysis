%线性方程组迭代 SOR迭代
% A=[3,-1,0,0,0;
%     -1,3,-1,0,0;
%     0,-1,3,-1,0;
%     0,0,-1,3,-1;
%     0,0,0,-1,3];
% b=[2,1,1,1,2];

n=5;%列向量大小
x0=zeros(n,1);
x1=zeros(n,1);
e=1;
omega=0.3;
A=hilb(n);
b=ones(n,1);
while e>0.0001
    for i=1:n
        t=x1;
        x1(i)=t(i)+omega*(b(i)-A(i,:)*t)/A(i,i);
    end
    e=norm(x1-x0);
    x0=x1;
end
x1
        
        
        
        
 