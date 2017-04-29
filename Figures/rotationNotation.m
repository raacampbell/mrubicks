function exampleTwists

labProps={'FontWeight','Bold','FontSize',12,'Interpreter','LaTex'};
pltSize=[0.35,0.35];
yPos=[0.65,0.36,0.0];
xPos=[0.05,0.35,0.65];

textPos=[-1.5,3.7]; %label position
viewAngle=[-18,35]; %View angle of cube (changing this alters label text position)

%set color definitions
[y,o,g,b,r,w]=rubiks.colorDefs;

clf



%R rotations
axes('Position',[xPos(1),yPos(1),pltSize])
faces=rubiks.solvedCube;
rubiks.draw3DCube(faces), view(viewAngle),
addRaxis

axes('Position',[xPos(2),yPos(1),pltSize])
faces{1}=repmat({r},3,3);
faces{5}=repmat({w},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addRaxis
t=text(textPos(1),textPos(2),['$\bf{R}$'],labProps{:});

axes('Position',[xPos(3),yPos(1),pltSize])
faces{1}=repmat({o},3,3);
faces{5}=repmat({y},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addRaxis
t=text(textPos(1),textPos(2),['$\dot{\bf{R}}$'],labProps{:});



%U rotations
axes('Position',[xPos(1),yPos(2),pltSize])
faces=rubiks.solvedCube;
rubiks.draw3DCube(faces), view(viewAngle),
addUaxis

axes('Position',[xPos(2),yPos(2),pltSize])
faces{4}=repmat({r},3,3);
faces{5}=repmat({g},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addUaxis
t=text(textPos(1),textPos(2),['$\bf{U}$'],labProps{:});

axes('Position',[xPos(3),yPos(2),pltSize])
faces{4}=repmat({o},3,3);
faces{5}=repmat({b},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addUaxis
t=text(textPos(1),textPos(2),['$\dot{\bf{U}}$'],labProps{:});



%F rotations
axes('Position',[xPos(1),yPos(3),pltSize])
faces=rubiks.solvedCube;
rubiks.draw3DCube(faces), view(viewAngle),
addFaxis

axes('Position',[xPos(2),yPos(3),pltSize])
faces{4}=repmat({w},3,3);
faces{1}=repmat({b},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addFaxis
t=text(textPos(1),textPos(2),['$\bf{F}$'],labProps{:});

axes('Position',[xPos(3),yPos(3),pltSize])
faces{4}=repmat({y},3,3);
faces{1}=repmat({g},3,3);
rubiks.draw3DCube(faces), view(viewAngle)
addFaxis
t=text(textPos(1),textPos(2),['$\dot{\bf{F}}$'],labProps{:});





set(gcf,'PaperPosition',[0,0,6,6])
print -depsc notation/rotationNotation.eps




function addRaxis
hold on
plot3([-2.75,-1.5],[0,0],[0,0],'-','Color',[1,1,1]*0.5,'LineWidth',2)
plot3([1.75,2.75],[0,0],[0,0],'-','Color',[1,1,1]*0.5,'LineWidth',2)
hold off
axis tight

function addUaxis
hold on
%add invisible symbols to scale things well
plot3(-2.75,0,0,'.w')
plot3(2.75,0,0,'.w')

plot3([0,0],[0,0],[1.5,2.95],'-','Color',[1,1,1]*0.5,'LineWidth',2)
hold off
axis tight



function addFaxis
hold on
%add invisible symbols to scale things well
plot3(-2.75,0,0,'.w')
plot3(2.75,0,0,'.w')

%plot3([0,0],[0,0],[-2.75,-1.5],'-','Color',[1,1,1]*0.5,'LineWidth',2)
plot3([0,0],[-2.85,-1.5],[0,0],'-','Color',[1,1,1]*0.5,'LineWidth',2)
hold off
axis tight

