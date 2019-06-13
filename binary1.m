%二分法 误差小于10-7

function out=binary1(f,a,b,p)
if a>b
    temp=a;
    a=b;
    b=temp;
end
while((b-a)>p)
    temp=f((a+b)/2);
    if temp==0
        %out=(a+b)/2;
        break;
    else
        if temp*f(a)<0
            b=(a+b)/2;
        else
            a=(a+b)/2;
        end
    end
end
out=(a+b)/2;
end

    
