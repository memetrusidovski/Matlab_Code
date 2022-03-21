%Input data
n = 6;
x = 2.3;
pointx = [1 2 2.5 3 4 5];
pointy = [0 5 7 6.5 2 0];
L = ones(6, 6);

   for i=1:n-1
      for j=1:n-1
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

   