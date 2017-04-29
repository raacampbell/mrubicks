function drawFace(colors)
% Draw faces 
%
% function rubiks.drawFace(colors)

if nargin==0
	colors={'y','y','y';'y','w','y';'y','y','y'};
end

for ii=0:2
	for jj=0:2
		x=[0,1,1,0]+ii;
		y=[0,0,1,1]+jj;
		p=patch(x,y,1);
		set(p,'FaceColor',colors{ii+1,jj+1})
	end
end


rubiks.formatImage
