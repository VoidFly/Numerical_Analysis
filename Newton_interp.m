%ţ�ٲ�ֵ��
f=[0.41075,0.57815,0.69675,0.88811,1.02652,1.25382];
x=[0.4,0.55,0.65,0.8,0.9,1.05];

z=zeros(5);

for i=1:5
    for j=i:5
        if i==1
            z(j,i)=(f(j+1)-f(j))/(x(j+1)-x(j));
        else
            z(j,i)=(z(j,i-1)-z(j-1,i-1))/(x(j+1)-x(j+1-i));
        end
    end
end

            
        