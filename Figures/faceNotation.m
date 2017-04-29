function faceNotation

labProps={'FontWeight','Bold','FontSize',12};
pltSize=[0.35,0.35];
yPos=0.75:-0.10:0.10;
xPos=[0.1,0.65];

textPos=[-1.5,3.7]; %label position
viewAngle=[-18,35]; %View angle of cube (changing this alters label text position)

%define darker versions of the colors
r=[0.4,0,0];
b=[0,0,0.4];
y=[0.4,0.4,0];
clf

%U and u
axes('Position',[xPos(1),yPos(1),pltSize])
faces=rubiks.solvedCube;
faces{5}(:,2:3)=repmat({r},3,2);
faces{4}(:,2:3)=repmat({b},3,2);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'U',labProps{:})

axes('Position',[xPos(2),yPos(1),pltSize])
faces=rubiks.solvedCube;
faces{5}(:,3)=repmat({r},3,1);
faces{4}(:,3)=repmat({b},3,1);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'u',labProps{:})


%D and d
faces=rubiks.solvedCube;
faces{1}=repmat({y},3,3);
faces{5}(:,1:2)=repmat({r},3,2);
faces{4}(:,1:2)=repmat({b},3,2);
axes('Position',[xPos(1),yPos(2),pltSize])
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'D',labProps{:})

axes('Position',[xPos(2),yPos(2),pltSize])
faces=rubiks.solvedCube;
faces{1}=repmat({y},3,3);
faces{5}(:,1)=repmat({r},3,1);
faces{4}(:,1)=repmat({b},3,1);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'d',labProps{:})


%R and r
axes('Position',[xPos(1),yPos(3),pltSize])
faces=rubiks.solvedCube;
faces{1}(:,1:2)=repmat({y},3,2);
faces{5}(1:2,:)=repmat({r},2,3);
faces{4}=repmat({b},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'R',labProps{:})

axes('Position',[xPos(2),yPos(3),pltSize])
faces=rubiks.solvedCube;
faces{1}(:,1)=repmat({y},3,1);
faces{5}(1,:)=repmat({r},1,3);
faces{4}=repmat({b},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'r',labProps{:})

%L and l
axes('Position',[xPos(1),yPos(4),pltSize])
faces=rubiks.solvedCube;
faces{1}(:,2:3)=repmat({y},3,2);
faces{5}(2:3,:)=repmat({r},2,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'L',labProps{:})

axes('Position',[xPos(2),yPos(4),pltSize])
faces=rubiks.solvedCube;
faces{1}(:,3)=repmat({y},3,1);
faces{5}(3,:)=repmat({r},1,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'l',labProps{:})


%F and f
axes('Position',[xPos(1),yPos(5),pltSize])
faces=rubiks.solvedCube;
faces{1}(1:2,:)=repmat({y},2,3);
faces{4}(1:2,:)=repmat({b},2,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'F',labProps{:})


axes('Position',[xPos(2),yPos(5),pltSize])
faces=rubiks.solvedCube;
faces{1}(1,:)=repmat({y},1,3);
faces{4}(1,:)=repmat({b},1,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'f',labProps{:})


%B and b
axes('Position',[xPos(1),yPos(6),pltSize])
faces=rubiks.solvedCube;
faces{5}=repmat({r},3,3);
faces{1}(2:3,:)=repmat({y},2,3);
faces{4}(2:3,:)=repmat({b},2,3);
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'B',labProps{:})


axes('Position',[xPos(2),yPos(6),pltSize])
faces=rubiks.solvedCube;
faces{5}=repmat({r},3,3);
faces{1}(3,:)=repmat({y},1,3);
faces{4}(3,:)=repmat({b},1,3);
rubiks.draw3DCube(faces), view(viewAngle)
rubiks.draw3DCube(faces), view(viewAngle)
text(textPos(1),textPos(2),'b',labProps{:})


set(gcf,'PaperPosition',[0,0,3,14])
print -depsc notation/faceNotation.eps