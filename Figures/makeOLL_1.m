function makeOLL_1

clf

gry=[1,1,1]*0.5;


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 1
faces={gry,'y',gry;...
	   'y','y',gry;...
	   gry,gry,gry};

sides={{[],[],[]},...
       {[],'y',[]},...
       {[],'y',[]},...
       {[],[],[]}};

rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_1/OLL_1_1.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 2
faces={gry,gry,gry;...
	   'y','y','y';...
	   gry,gry,gry};

sides={{[],'y',[]},...
       {[],[],[]},...
       {[],'y',[]},...
       {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_1/OLL_1_2.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 3
faces={gry,gry,gry;...
	   gry,'y',gry;...
	   gry,gry,gry};

sides={{[],'y',[]},...
       {[],'y',[]},...
       {[],'y',[]},...
       {[],'y',[]} };

rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_1/OLL_1_3.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 4
faces={gry,'y',gry;...
	   'y','y','y';...
	   gry,'y',gry};

sides={{[],[],[]},...
	   {[],[],[]},...
	   {[],[],[]},...
	   {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_1/OLL_1_4.eps')


