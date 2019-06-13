%拉格朗日插值 runge
format long
f=@(x)(1/(1+x^2));
L=@(x)(0);%插值得到的函数
base=@(x)(0);%插值基函数
n=11;%区间分成10份，一共11个分点！
a=-5;b=5;
X=[-5,-4,-3,-2,-1,0,1,2,3,4,5];
F=[f(-5),f(-4),f(-3),f(-2),f(-1),f(0),f(1),f(2),f(3),f(4),f(5)];

for k=1:n
    z1=@(x)(1);%插值基函数中的分子
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
value=zeros(1,40);%插值结果
value2=zeros(1,40);%原函数结果
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

        
       

