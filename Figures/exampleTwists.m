function exampleTwists
% Shows example twists of the cube



labProps={'FontWeight','Bold','FontSize',12};
pltSize=[0.35,0.35];
yPos=[0.6,0.2];
xPos=[0.1,0.5];

textPos=[-1.5,3.7]; %label position
viewAngle=[-18,35]; %View angle of cube (changing this alters label text position)

%set color definitions
[y,o,g,b,r,w]=rubiks.colorDefs;

clf
[~,m]=rubiks.solvedCube; %plot a solved cube

%now manipulate it
%U and u
axes('Position',[xPos(1),yPos(1),pltSize])
faces=rubiks.solvedCube;
faces{m.r}(1,:)=repmat({g},1,3); %first row of front (red) face green
faces{m.b}(1,:)=repmat({r},1,3); %first row of left (blue) face red
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'U',labProps{:})

axes('Position',[xPos(2),yPos(1),pltSize])
faces=rubiks.solvedCube;
faces{m.r}(1:2,:)=repmat({g},2,3); %as above, but first two rows of each
faces{m.b}(1:2,:)=repmat({r},2,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'u',labProps{:})

%L and l
axes('Position',[xPos(1),yPos(2),pltSize])
faces=rubiks.solvedCube;
faces{m.y}(:,1)=repmat({o},1,3);
faces{m.r}(:,1)=repmat({y},1,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'L',labProps{:})

axes('Position',[xPos(2),yPos(2),pltSize])
faces=rubiks.solvedCube;
faces{m.y}(:,1:2)=repmat({o},3,2);
faces{m.r}(:,1:2)=repmat({y},3,2);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'l',labProps{:})



set(gcf,'PaperPosition',[0,0,12,12])
print -depsc notation/exampleTwists.eps
