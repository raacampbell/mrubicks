function PLL_opposites

clf

%set color definitions
[y,o,g,b,r]=rubiks.colorDefs;

%build yellow face
faces={y,y,y;...
	   y,y,y;...
	   y,y,y};






% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case F
sides={...
	   {r,r,r};...
   	   {b,g,o};...    
	   {g,o,b};...
	   {o,b,g};...
   	   };


rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([7,9; 4,6],1)
print('-depsc','PLL/PLL_F.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case F
sides={...
	   {o,o,g};...
	   {r,b,o};...
	   {g,r,r};...
   	   {b,g,b}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([3,9;; 4,6],1)
print('-depsc','PLL/PLL_T.eps')

