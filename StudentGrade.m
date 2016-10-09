m=input('enter the number of students\n');
n=input('enter the number of modules\n');

for i=1:m
    sum=0;
    for j=1:n
        grad(i,j)=input(['enter grade ' num2str(j) ' for student ' num2str(i) ' =\n']);
        sum=sum+grad(i,j);
    end
avg(i)=sum/n;
fprintf('average of student ');
disp(i);
fprintf(' = ');
disp(avg(i));
fprintf('\n');
end
