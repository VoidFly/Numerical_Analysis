%解线性方程组 高斯
A=[3,1,2;6,3,4;3,1,5];
b=[1,2,3];
s=size(A);

k=s(1)-1;%按行遍历到倒数第二行
flag=1;
for i=1:k
    if A(i,i)==0
        fprintf("主元为0！")
        flag=0;
        break;
    end
    for j=(i+1):s(1)%第二层 行
        m=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-m*A(i,:);
        b(j)=b(j)-b(i)*m;
    end
end
if flag==1
    x=zeros(s(1),1);
    for j=s(1):-1:1
        sum=A(j,:)*x;
        x(j)=(b(j)-sum)/A(j,j);
    end
end


        

