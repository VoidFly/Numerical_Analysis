%�����Է����� ��˹
A=[3,1,2;6,3,4;3,1,5];
b=[1,2,3];
s=size(A);

k=s(1)-1;%���б����������ڶ���
flag=1;
for i=1:k
    if A(i,i)==0
        fprintf("��ԪΪ0��")
        flag=0;
        break;
    end
    for j=(i+1):s(1)%�ڶ��� ��
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


        

