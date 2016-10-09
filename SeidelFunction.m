n=input('the number of equations    ');
eps=input('the excepted diffrence   ');
disp('enter augmented matrix by row  ');

augmented =zeros(n,n+1);
solution =zeros(1,n);
temp =zeros(n+1);
temp1 =zeros(n+1);
solutionprev =zeros(1,n);
solutiondiff =zeros(1,n);
sum =0;

for i=1:n
    for j=1:n+1
        augmented(i,j)=input(' ');
        disp('enter next element');
    end
end

for i=1:n
    if(augmented(i,i)==0)
        temp(1,i)=1;
    end
end

for j=1:n
    if(temp(1,j)==1)
        for i=1:n
            if((augmented(i,j)~=0) &&(augmented(j,i)~=0))
                temp1=augmented(j,:);
                augmented(j,:)=augmented(i,:);
                augmented(i,:)=temp1;
            end
        end
    end
end

augmented
sum1=0;
j=0;
sum2=10;
format long;
fprintf('iteration      x1          x2          x3 \n');
fprintf('\t%d  %11.5f  %11.5f  %11.5f \n',j,solution);

while(sum2>=eps)
    sum2=0;
    solutionprev=solution;
    for i=1:n
        for k=1:i-1
            sum1=sum1+solution(1,k)*augmented(i,k);
        end
        for k=i+1:n
            sum1=sum1+solution(1,k)*augmented(i,k);
        end
        solution(1,i)=(augmented(i,n+1)-sum1)/augmented(i,i);
        sum1=0;
    end
    j=j+1;
    fprintf('\t%d  %11.5f  %11.5f  %11.5f \n',j,solution);
    solutiondiff=abs(solutionprev-solution);
    for i=1:n
        sum2=sum2+solutiondiff(1,i);
    end
end
