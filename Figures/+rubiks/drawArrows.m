function varargout=drawArrows(C,bothEnds,width)
% function H=rubiks.drawArrows(C,bothEnds)
%
% Draw arrows between cubies. Accepts an N by 2 matrix.
% Each row is a set of arrow from and to coordinates defined
% by positions on the 3 by 3 grid:
%
% 1 2 3
% 4 5 6
% 7 8 9
%
% bothEnds is an optional vector defining if arrows will be double-ended
%
% optionally returns handles

if nargin<2
	bothEnds=0;
end
if nargin<3
	width=5;
end

%call recursively if there are multiple arrows being asked for
if size(C,1)>1
	for ii=1:size(C,1)
		H(ii)=rubiks.drawArrows(C(ii,:),bothEnds,width);
	end

	if nargout>0
    	varargout{1}=H;
	end
	return
end

%for de-bugging
if 0

	for ii=1:9
		[x,y]=ind2sub([3,3],ii);
		t(ii)=text(x-0.5,y-0.5,num2str(ii));
	end
	pause
	delete(t)
	varargout{1}=[];
	return
end



%Must first translate the digits 1 to 9 into x and y coordinates.
%We will here obtain the cubie centres that relate to a number.

tmp=C;
f=find(C>6); tmp(f)=C(f)-6;
f=find(C<4); tmp(f)=C(f)+6;
C=tmp;

[x1,y1]=ind2sub([3,3],C(1));
[x2,y2]=ind2sub([3,3],C(2));


%So we're going to go between the following locations
x=[x1,x2]-0.5;
y=[y1,y2]-0.5;

%This will work, but with multiple arrows, we'll want them to not
%go quite to the cube centers
mux=mean(x);
muy=mean(y);

shortenFactor=0.85;
x(1)=mux+(x(1)-mux)*shortenFactor;
x(2)=mux+(x(2)-mux)*shortenFactor;

y(1)=muy+(y(1)-muy)*shortenFactor;
y(2)=muy+(y(2)-muy)*shortenFactor;



if bothEnds
  ends='both';
else
  ends='stop';
end

%plot the arrow
from=[x(1),y(1)];
to=[x(2),y(2)];
H=arrow(from,to,'Length',20,'TipAngle',25,'width',width,'ends',ends);




if nargout>0
	varargout{1}=H;
end


