function [faces,m]=solvedCube
% function [faces,mapOfFaceIndeces]=rubiks.solvedCube
%
% Return a solved cube face order
%
% Outputs
% faces - a cell array describing the color of each face
% map - a mapping structure that links eace face to a color
%
% See exampleTwists for how this is used
%
% Also see: rubiks.draw3DCube

%set color definitions
[y,o,g,b,r,w]=rubiks.colorDefs;

     faces={
       %Yellow face
       repmat({y},3,3),...
       %Green face
       repmat({g},3,3),...
       %White face
       repmat({w},3,3),...
 	   %Blue face
       repmat({b},3,3),...
       %Red face
       repmat({r},3,3),...
 	   %Orange face
       repmat({o},3,3),...
    };


%make a "map" to more easily call faces
m.y=1;
m.g=2;
m.w=3;
m.b=4;
m.r=5;
m.o=6;