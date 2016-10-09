n =input('the order of the matrix  ');
A =zeros(n,n);
B =zeros(n,n);
C =zeros(n,n);
Ainver =zeros(n,n);

cofficent =zeros(1,n);
b =zeros(1,n);
solution =zeros(1,n);

display(['enter the vector']);
for j=1:n
    b(1,j)=input('');
end

display(['enter the matrix by row']);
for i=1:n
    for j=1:n
        A(i,j)=input('');
    end
end

B=A;

for k=1:n
    sum=0;
    for j=1:n
        sum=sum+B(j,j);
    end
    cofficent(1,k)=sum/k;
    if(k==n-1)
        C=B;
    end
    B = A*(B- cofficent(1,k)*eye(n,n));
end

sum=0;
format short

cofficent
Ainver=(C-cofficent(1,n-1)*eye(n,n))/cofficent(1,n);
solution=Ainver*(b')


