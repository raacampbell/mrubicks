function makeOLL_2

clf

gry=[1,1,1]*0.5;


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 1
faces={gry,'y',gry;...
	   'y','y','y';...
	   'y','y',gry};

sides={{'y',[],[]},...
       {'y',[],[]},...
       {'y',[],[]},...
       {[],[],[]}};

rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_1.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 2
faces={'y','y',gry;...
	   'y','y','y';...
	   gry,'y',gry};

sides={{[],[],'y'},...
       {[],[],'y'},...
       {[],[],'y'},...
       {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_2.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 3
faces={gry,'y',gry;...
	   'y','y','y';...
	   gry,'y',gry};

sides={{[],[],'y'},...
       {[],[],[]},...
       {'y',[],[]},...
       {'y',[],'y'} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_3.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 4
sides={{[],[],[]},...
       {'y',[],'y'},...
       {[],[],[]},...
       {'y',[],'y'} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_4.eps')



% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 5
faces={gry,'y','y';...
	   'y','y','y';...
	   gry,'y','y'};

sides={{'y',[],[]},...
       {[],[],[]},...
       {[],[],'y'},...
       {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_5.eps')



% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 6
faces={gry,'y','y';...
	   'y','y','y';...
	   'y','y',gry};

sides={{[],[],[]},...
       {[],[],[]},...
       {'y',[],[]},...
       {[],[],'y'} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_6.eps')


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 7
faces={'y','y','y';...
	   'y','y','y';...
	   gry,'y',gry};

sides={{[],[],[]},...
       {[],[],[]},...
       {'y',[],'y'},...
       {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_7.eps')




% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
% Case 8
faces={'y','y','y';...
	   'y','y','y';...
	   'y','y','y'};

sides={{[],[],[]},...
       {[],[],[]},...
       {[],[],[]},...
       {[],[],[]} };


rubiks.drawFaceAndSides(faces,sides);
print('-depsc','OLL_2/OLL_2_8.eps')