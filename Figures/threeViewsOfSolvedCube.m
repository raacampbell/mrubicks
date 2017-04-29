function faceNotation

subplot(1,3,1)
rubiks.draw3DCube
view([-30,45])

subplot(1,3,2)
rubiks.draw3DCube
view([-6,45])

subplot(1,3,3)
rubiks.draw3DCube
view([30,45])


set(gcf,'PaperPosition',[0,0,10,3])
print('-depsc', ['notation/',mfilename])