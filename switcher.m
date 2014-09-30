%switcher

A = input('matrix :');
n = size(A);
n = n(2);

T = A;
for (i=1:n)
   A(:,i)=T(:,n-i+1);  
end