file = input('Please designate your jpeg file: ');
L = imread(file);
imshow(L);
k=size(L);
m=k(1);
n=k(2);
h = input('How many eigenvalues will you use to reconstruct?: ');

red = L(:,:,1);
green = L(:,:,2);
blue = L(:,:,3);

doublered = double(red);
doublered = doublered/256;

doublegreen = double(green);
doublegreen = doublegreen/256;

doubleblue = double(blue);
doubleblue = doubleblue/256;


[u,s,v]=svd(doubleblue);
U = u(:,1:h);
V = v(:,1:h);
S = s(1:h,1:h);

newblue=U*S*V';

[u,s,v]=svd(doublegreen);
U = u(:,1:h);
V = v(:,1:h);
S = s(1:h,1:h);

newgreen=U*S*V';

[u,s,v]=svd(doublered);
U = u(:,1:h);
V = v(:,1:h);
S = s(1:h,1:h);

newred=U*S*V';

newL=L;
newL(:,:,1)=256*newred;
newL(:,:,2)=256*newgreen;
newL(:,:,3)=256*newblue;
newL=uint8(newL);
imshow(newL)

clear u v s U V S newred newgreen newblue doublered doubleblue doublegreen
clear file i j k h m n