clear
clc
%关系运算> < == ~=

%返回 0 1
[1 -2 3]>2 %每一个元素和标量比较
%对应返回0 1 矩阵
%i为复数 有特殊含义
i^2
%算术运算>关系运算>逻辑运算
a=[1 -3 5]

l="this is a string"
m=[1:2:11]% i:j:k i初始值 j步长 k终止

c=hilb(4);%希尔伯特矩阵 4为大小 4x4
D=eye(2)
E=ones(3)

A=[1,2,3;4,5,6;7,8,9]
%A(2)
%b=logical([0 1 1])
%[c,d]=find(A==8)
%A(:,3)
A' %矩阵转置
A+2 %所有元素加标量
%inv(A) 求逆
%A/B A除B    A\B  B除A
a=size(A) %size(A,2)
a(1)%即A的行数
A
F=[1,2;3,4]

numel(F)%元素个数
max(F)
%函数调用基本结构  函数文件名和函数名相同
%[a,b]=abc(4)
%o=sdf(2)



%匿名函数
z=@(x)(x+2);
z(3)
%function[s,p]=abc(r)
%s=pi*r^2;
%p=2*pi*r;
%end

%function[s]=sdf(p)
%s=3;
%end

%x=1
%switch(x)
%    case {0,1}%这里大括号成为cell 其中存储的是0，1 不是向量，此时判断x是0或者1
%        fprintf('hhh\n');
%end;   







