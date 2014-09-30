%file = input('Please designate your jpeg file: ');
L1 = input('Please input matrix to chop : ');
tol = input('Input tolerance test for extreme value :');
%L = imread(file);
%imshow(L);
k=size(L1);
m=k(1);
n=k(2);

l=round(m/100);
t=round(n/100);

R=zeros(l,t);
Y=zeros(l,t);
B=zeros(1,t);

for(i = 1:l)
    a = (i-1)*100+1;
    b = a+99;
for(j = 1:t)
    c = (j-1)*100+1;
    d = c+99;
    
    subset(:,:,:,i,j) = L1(a:b,c:d,:);
    [counts,x]=imhist(subset(:,:,1,i,j));
    if sum(counts(240:256)) > tol
        R(i,j) = 1;
    end
    
    [counts,x]=imhist(subset(:,:,2,i,j));
    if sum(counts(240:256)) > tol
        Y(i,j) = 1;
    end
    
    [counts,x]=imhist(subset(:,:,3,i,j));
    if sum(counts(240:256)) > tol
        B(i,j) = 1;
    end
end
end

clear L1 n m k l t a b c d tol counts x i j
%for(i
%[counts,x]=imhist(subset(:,:,1,i,j));
%if (sum(counts(240:256))>0)
%    print(i)
%    print(j)
%end