
X=input('enter the value you want to estimate  ');
N=input('enter the order of the approximation  ');
x=zeros(1,N+1);
y=zeros(1,N+1);
L=zeros(N+1,1);

for i=1:N+1
    fprintf('enter the x componont of the point  ');
    x(1,i)=input('');
    fprintf('enter the y componont of the point  ');
    y(1,i)=input('');
end

for k=1:N+1
    mul=1;
    for i=1:k-1
        mul=mul*((-x(1,i)+X)/(x(1,k)-x(1,i)));
    end
    for i=k+1:N+1
        mul=mul*((-x(1,i)+X)/(x(1,k)-x(1,i)));
    end
    L(k,1)=mul;
end

fprintf('the estimated value of f(%2.2f) is %3.4f',X,y*L);
