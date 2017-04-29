function PLL_corners

clf

%set color definitions
[y,o,g,b,r]=rubiks.colorDefs;

%build yellow face
faces={y,y,y;...
	   y,y,y;...
	   y,y,y};






% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 1
sides={...
	   {g,o,g};...
	   {r,g,b};...
	   {o,r,r};...
   	   {b,b,o}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([1,3; 3,9; 9,1])
print('-depsc','PLL_corners/PLL_corners_1.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 2
sides={...
	   {r,o,b};...
	   {o,g,o};...
	   {g,r,r};...
   	   {b,b,g}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([3,1; 9,3; 1,9])
print('-depsc','PLL_corners/PLL_corners_2.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 3
sides={...
	   {b,o,g};...
	   {r,g,o};...
	   {g,r,b};...
   	   {o,b,r}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([1,7; 3,9],1)

print('-depsc','PLL_corners/PLL_corners_3.eps')

