function PLL_opposites

clf

%set color definitions
[y,o,g,b,r]=rubiks.colorDefs;

%build yellow face
faces={y,y,y;...
	   y,y,y;...
	   y,y,y};






% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case Ga
sides={...
	   {g,b,r};...
	   {b,o,g};...
	   {r,r,b};...
   	   {o,g,o}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([1,3; 3,7; 7,1])
H=rubiks.drawArrows([4,6; 6,2; 2,4],0,8);
set(H,'FaceColor',[1,1,1]*0.6,'EdgeColor','w')
print('-depsc','PLL/PLL_Ga.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case Gb
sides={...
	   {g,o,r};...
	   {b,b,g};...
	   {r,g,b};...
   	   {o,r,o}...
   	   };
rubiks.drawFaceAndSides(faces,sides);
H=rubiks.drawArrows([9,1; 1,7; 7,9]); 
set(H,'FaceColor','b')
H=rubiks.drawArrows([4,2; 2,8; 8,4],0,8);
set(H,'FaceColor',[1,1,1]*0.6,'EdgeColor','w')
print('-depsc','PLL/PLL_Gb.eps')



% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case Gc
sides={...
	   {g,r,r};...
	   {b,o,g};...
	   {r,g,b};...
   	   {o,b,o}...
   	   };

rubiks.drawFaceAndSides(faces,sides);
H=rubiks.drawArrows([9,1; 1,7; 7,9]); 
set(H,'FaceColor','b')
H=rubiks.drawArrows([4,6; 6,8; 8,4],0,8);
set(H,'FaceColor',[1,1,1]*0.6,'EdgeColor','w')
print('-depsc','PLL/PLL_Gc.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case Gd
sides={...
	   {g,b,r};...
	   {b,g,g};...
	   {r,o,b};...
   	   {o,r,o}...
   	   };
rubiks.drawFaceAndSides(faces,sides);
rubiks.drawArrows([1,3; 3,7; 7,1])
H=drawArrows([8,2; 2,4; 4,8],0,8);
set(H,'FaceColor',[1,1,1]*0.6,'EdgeColor','w')
print('-depsc','PLL/PLL_Gd.eps')

