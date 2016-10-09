format
n = input('the number of equations: ');
augmented=zeros(n,n+1);
solution=zeros(n);
temp=zeros(n+1);
sum=0;

for i=1:n
    for j=1:n+1
        augmented(i,j)= input(['enter the ' num2str(i) ',' num2str(j) ' elemnet of the augmented matrix: ']);
    end
end

augmented

for k=1:n-1
    for j=k+1:n
    if(augmented(j,k)>augmented(k,k))
        temp(1,:)=augmented(k,:);
        augmented(k,:)=augmented(j,:);
        augmented(j,:)=temp(1,:);
    end
    end
    for f=k+1:n
       u=augmented(f,k)/augmented(k,k);
       augmented(f,:)= augmented(f,:)- u*augmented(k,:);
    end
end

augmented
solution(1,n)=augmented(n,n+1)/augmented(n,n);
i=n-1;

while i>1
    for j=i+1:n
        sum=sum+augmented(i,j)*solution(1,j);
    end
    solution(1,i)= (augmented(i,n+1)- sum)/(augmented(i,i));
    i=i-1;
end

sum=0;

for i=2:n
    sum=sum+augmented(1,i)*solution(1,i);
end
 solution(1,1)= (augmented(1,n+1)- sum)/(augmented(1,1));
 solution
 
