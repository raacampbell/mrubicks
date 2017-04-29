function drawFace(faces,sides)
% Draw a face of a Rubiks cube
%
% function rubiks.drawFace(faces,sides)
%
%


%set color definitions
[y,o,g,b,r,w]=rubiks.colorDefs;

%matrix as seen on face
if nargin<1
 faces={y,y,y;...
 	    y,y,y;...
 	    y,y,y};
end

%The faces in sides are defined clockwise from top, with each side on a separate cell
if nargin<2
	sides={ {w,w,w},...  %top
	        {w,w,w},...  %right
	        {w,w,w},...  %bottom
   	        {w,w,w}};    %left
end


face_x=[0,1,1,0];
face_y=[0,0,1,1];

side_a=[0,1,1,0];
side_b=[0,0,0.15,0.15];
sideOffset=0.2;

clf
for ii=0:2
	for jj=0:2
		p=patch(face_x+ii,face_y+jj,1);
		set(p,'FaceColor',faces{3-jj,ii+1})


   	    %Top side
		if jj==2 
			p=patch(side_a+ii,side_b+jj+1+sideOffset-side_b(end),1);
            if ~isempty(sides{1}{ii+1})
       			set(p,'FaceColor',sides{1}{ii+1})
       		else
       			makeInvisible(p)
     		end
		end

	    %Right side
		if ii==2 
			p=patch(side_b+ii+1+sideOffset-side_b(end),side_a+jj,1);
			if ~isempty(sides{2}{3-jj})
				set(p,'FaceColor',sides{2}{3-jj})
			else
				makeInvisible(p)
			end
		end

		%Bottom sides
		if jj==0
			p=patch(side_a+ii,side_b-sideOffset,1);
			if ~isempty(sides{3}{3-ii})
				set(p,'FaceColor',sides{3}{3-ii})
			else
				makeInvisible(p)
			end
		end

	    %Left side
		if ii==0
			p=patch(side_b-sideOffset,side_a+jj,1);
			if ~isempty(sides{4}{jj+1})
				set(p,'FaceColor',sides{4}{jj+1})
			else
				makeInvisible(p)
			end
		end
	
	end
end


formatImage

function makeInvisible(h)
	set(h,'FaceColor','none','EdgeColor','none')
