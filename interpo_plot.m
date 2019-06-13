%�������ղ�ֵ runge
format long
f=@(x)(1/(1+x^2));
L=@(x)(0);%��ֵ�õ��ĺ���
base=@(x)(0);%��ֵ������
n=11;%����ֳ�10�ݣ�һ��11���ֵ㣡
a=-5;b=5;
X=[-5,-4,-3,-2,-1,0,1,2,3,4,5];
F=[f(-5),f(-4),f(-3),f(-2),f(-1),f(0),f(1),f(2),f(3),f(4),f(5)];

for k=1:n
    z1=@(x)(1);%��ֵ�������еķ���
    z2=1;
    for i=1:n
        if i==k
            continue;
        else
            z1=@(x)(z1(x)*(x-X(i)));
            z2=z2*(X(k)-X(i));
        end
    end
    L=@(x)(L(x)+F(k)*(z1(x)/z2));
end
value=zeros(1,40);%��ֵ���
value2=zeros(1,40);%ԭ�������
temp=-5;
temp_x=zeros(1,40);
for i=1:40
    value(i)=L(temp);
    value2(i)=f(temp);
    temp_x(i)=temp;
    temp=temp+0.25;
end
plot(temp_x,value2)
hold on
plot(temp_x,value)

        
       

