%线性方程组迭代解法 高斯赛得二
% A=[3,-1,0,0,0;
%     -1,3,-1,0,0;
%     0,-1,3,-1,0;
%     0,0,-1,3,-1;
%     0,0,0,-1,3];
% b=[2,1,1,1,2];
n=5;
A=hilb(n);
b=ones(n,1);
x0=zeros(n,1);
x1=zeros(n,1);
e=1;

while e>0.0001
    for i=1:n
        t=x1;
        x1(i)=(b(i)-A(i,1:i-1)*t(1:i-1)-A(i,i+1:n)*t(i+1:n))/A(i,i);
        %x1(i)=(b(i)-A(i,:)*t+A(i,i)*t(i))/A(i,i);
    end
    e=norm(x1-x0);
    x0=x1;
end
x1
        
        
        
        
 