%Å£¶ÙÇ°²å¹«Ê½
format long
x=[0,0.1,0.2,0.3,0.4,0.5];
f=[1,0.995,0.98007,0.95534,0.92106,0.87758];
n=5;
z=zeros(n);

for i=1:5
    for j=i:5
        if i==1
            z(j,i)=f(j+1)-f(j);
        else
            z(j,i)=z(j,i-1)-z(j-1,i-1);
        end
    end
end



