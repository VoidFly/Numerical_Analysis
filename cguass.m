%解线性方程组 高斯列主元法
%A=[0,1,2;6,3,4;3,1,5];
%b=[1,2,3];
%s=size(A);
%h=find(A(1,:)==1) find函数会返回所有等于的下标
A=[3,-1,0,0,0;
    -1,3,-1,0,0;
    0,-1,3,-1,0;
    0,0,-1,3,-1;
    0,0,0,-1,3];
b=[2;1;1;1;2];
s=size(A)
%max()函数作用于某一行/列返回最大值
for i=1:s(1)-1
    z=max(abs(A(i:s(1),i)));%找到最大元素
    if z==0
        fprintf("column with all zeros");
        break;
    end
    p=find(abs(A(:,i))==z);%返回所有满足条件的行下标
    p=p(1);
    if p~=i
        t=A(i,:);
        A(i,:)=A(p,:);
        A(p,:)=t;
        t=b(i);
        b(i)=b(p);%注意b列也要换
        b(p)=t;
    end
    for j=(i+1):s(1)
        m=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-A(i,:)*m;
        b(j)=b(j)-b(i)*m;
    end
end
x=zeros(s(2),1);
for j=s(1):-1:1
    sum=A(j,:)*x;
    x(j)=(b(j)-sum)/A(j,j);
end

x
    
        
        
        
        
