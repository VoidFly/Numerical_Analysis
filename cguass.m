%�����Է����� ��˹����Ԫ��
%A=[0,1,2;6,3,4;3,1,5];
%b=[1,2,3];
%s=size(A);
%h=find(A(1,:)==1) find�����᷵�����е��ڵ��±�
A=[3,-1,0,0,0;
    -1,3,-1,0,0;
    0,-1,3,-1,0;
    0,0,-1,3,-1;
    0,0,0,-1,3];
b=[2;1;1;1;2];
s=size(A)
%max()����������ĳһ��/�з������ֵ
for i=1:s(1)-1
    z=max(abs(A(i:s(1),i)));%�ҵ����Ԫ��
    if z==0
        fprintf("column with all zeros");
        break;
    end
    p=find(abs(A(:,i))==z);%���������������������±�
    p=p(1);
    if p~=i
        t=A(i,:);
        A(i,:)=A(p,:);
        A(p,:)=t;
        t=b(i);
        b(i)=b(p);%ע��b��ҲҪ��
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
    
        
        
        
        
