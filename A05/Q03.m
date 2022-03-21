%lagrange interpolation
%Input data 
pointx = [-2 -1 -0.5 0.5 1 2];
pointy = [-637 -96.5 -0.5 20.5 96.5 637];
x=0.1;
n=6;
L = ones(6, 6);

   for i=1:n
      for j=1:n
         if (i~=j)
            L(i,:)=L(i,:).*(x-pointx(j))/(pointx(i)-pointx(j));
         end
      end
   end
   y=0;
   for i=1:n
      y=y + pointy(i)*L(i,:);
   end
   
   y(1)