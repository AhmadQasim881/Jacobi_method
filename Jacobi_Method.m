A=input('Enter the coefficient matrix : ');
B=input('Enter source vector : ');
I=input('Enter intial value  : ');
n=input('Enter Number of iterations : ');

N=length(B);
X=zeros(1,N);
c=diag(A);

count=1;
res=0;

for i=1:n
    for j=1:N
        for k=1:length(A)
            if j~=k 
            res=res-A(j,k)*I(k);
            end
        end
        X(j)=(1/c(j))*(B(j)+res);
        count=count+1;
        res=0;
    end
    I=X;
end
fprintf("%d ",X);
fprintf("\n");

