function varargout=draw3DCube(faces)
%Draw a Rubiks cube in 3-D
%
% function faces=rubiks.draw3DCube(faces)
%
% Purpose
% Draws a 3-D Rubik's cube given a set of face colors.
% If called with no input argumenmts draws a solved cube. 
% This is the same as:
% rubiks.draw3DCube(solvedCube)
% 



if nargin<1
 faces=solvedCube;
end



%The centres of the 6 faces in 3-D space, assuming the origin is the cube centre
cen=[  0,  0,1.5;...
   1.5,  0, 0;...
     0,  0,-1.5;...
  -1.5,  0,  0;...
     0,-1.5, 0;...
     0, 1.5, 0];

o={'z','y','z','y','x','x'};

for c=1:size(cen,1)
	C=cen(c,:);
	switch o{c}

	case 'x'
     for ii=-1:1
		for jj=-1:1
			C=cen(c,:);
			pos=[C(1)+ii,C(2),C(3)+jj];
			makeSquare(pos,o{c},faces{c}{2-jj,ii+2})
		end
	 end

	case 'y'
     for ii=-1:1
		for jj=-1:1
			C=cen(c,:);
			pos=[C(1),C(2)+ii,C(3)+jj];
			makeSquare(pos,o{c},faces{c}{2-jj,2+ii})
		end
	 end
	case 'z'
     for ii=-1:1
		for jj=-1:1
			C=cen(c,:);
			pos=[C(1)+ii,C(2)+jj,C(3)];
			makeSquare(pos,o{c},faces{c}{2-jj,ii+2})
		end
	 end

	end

end

view(3)
axis equal off
box on

set(gcf,'PaperPosition',[0,0,3,3])

if nargout>0
	varargout{1}=faces;
end


%Plot square around a centre defined by x,y,z, and the square's orientation
function makeSquare(pos,orientation,color)
	x=pos(1);
	y=pos(2);
	z=pos(3);
	a=[-0.5,0.5,0.5,-0.5];
	b=[-0.5,-0.5,0.5,0.5];
	c=[0,0,0,0];

    %orientation is a string that defines along which plane the square is parallel
    switch lower(orientation)
    case 'x' %F and B
    	X=a; Y=c; Z=b;
    case 'y' %R and L
    	X=c; Y=a; Z=b;
    case 'z' %U and D
    	X=a; Y=b; Z=c;
    end
	p=patch(X+x, Y+y, Z+z,1);
	set(p,'FaceColor',color,'LineWidth',1)

