function [faces,m]=centresOnly
% function [faces,mapOfFaceIndeces]=rubiks.centresOnly
%
% Return a color scheme for a cube that has correctly colored 
% centre cubies but gray everywhere else.
%
% Outputs
% faces - a cell array describing the color of each face
% map - a mapping structure that links eace face to a color
%
% See exampleTwists for how this is used


%set color definitions
[y,o,g,b,r,w]=rubiks.colorDefs;

    gr = [1,1,1]*0.5;
    grayFace = ...
    {gr,gr,gr;...
    gr,gr,gr;...
    gr,gr,gr};

     faces={...
       %Yellow face
       grayFace, ...
       %Green face
       grayFace, ...
       %White face
       grayFace, ...
 	   %Blue face
       grayFace, ...
       %Red face
       grayFace, ...
 	   %Orange face
       grayFace};

    faces{1}{5}=y;
    faces{2}{5}=g;
    faces{3}{5}=w;
    faces{4}{5}=b; 
    faces{5}{5}=r;
    faces{6}{5}=o;

%make a "map" to more easily call faces
m.y=1;
m.g=2;
m.w=3;
m.b=4;
m.r=5;
m.o=6;