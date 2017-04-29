function moved=flipFace(move,faces)
% Apply cube notation to face. If no faces argument  we apply move to solved cube
%
% function faces=rubiks.flipFace(move,faces)
%
% move is a string that is a legal notation. e.g.
%
% 'd','D','Dp','dp', etc
%
% It can also be a cell array of strings, in which 
% case the final cube state is returned
%
% Example
% A solved cube that has undergone "R"
% >> rubiks.draw3DCube(rubiks.flipFace('R'));
%
% NOTE: this is not finished. It's also really stupidly coded. 

if nargin<2
 faces=rubiks.solvedCube;
end

if iscell(move)
    moved=faces;
    for ii=1:length(move)
        moved=rubiks.flipFace(move{ii},moved);
    end
    return
end


[~,m]=rubiks.solvedCube;
moved=faces;


%Define the layers to move
switch move
    case {'R','Rp','R2'}
        ii=3;
    case {'r','rp','r2'}
        ii=2:3; %To handle two layers
    case {'F','Fp','F2',}
        ii=3; jj=1; %left and right are different from top and bottom
    case {'f','fp','f2'}
        ii=2:3; jj=1:2; 
    case {'L','Lp','L2','U','Up','U2'}
        ii=1;
    case {'l','lp','l2','u','up','u2'}
        ii=1:2;

otherwise
  fprintf('Unknown move %s. Ignored\n',move)
  return
end


%Move the layers
if strcmpi(move(1),'r') %Right
 
 if findstr(move,'p') %Do Rp or rp
        moved{m.y}(:,ii)=flipud(faces{m.o}(:,ii));
        moved{m.r}(:,ii)=faces{m.y}(:,ii);
        moved{m.o}(:,ii)=faces{m.w}(:,ii);
        moved{m.w}(:,ii)=flipud(faces{m.r}(:,ii));
    else %Do R or r
        moved{m.y}(:,ii)=faces{m.r}(:,ii);
        moved{m.r}(:,ii)=faces{m.w}(:,ii);
        moved{m.o}(:,ii)=faces{m.y}(:,ii);
        moved{m.w}(:,ii)=faces{m.o}(:,ii);
    end

elseif strcmpi(move(1),'f') %Front
    disp('f')
 if findstr(move,'p') %Do Fp or fp
        moved{m.y}(ii,:)=faces{m.g}(ii,:);
        moved{m.b}(:,jj)=faces{m.y}(:,ii);
        moved{m.g}(:,jj)=faces{m.w}(:,ii);
        moved{m.w}(ii,:)=faces{m.b}(ii,:);
    else %Do F or f
        moved{m.y}(ii,:)=faces{m.b}(ii,:);
        moved{m.b}(:,jj)=faces{m.w}(:,ii);
        moved{m.g}(:,jj)=faces{m.y}(:,ii);
        moved{m.w}(ii,:)=faces{m.g}(ii,:);
    end

elseif strcmpi(move(1),'l') %Left

  if findstr(move,'p') %Do Lp or lp
        moved{m.y}(:,ii)=faces{m.r}(:,ii);
        moved{m.r}(:,ii)=faces{m.w}(:,ii);
        moved{m.o}(:,ii)=faces{m.y}(:,ii);
        moved{m.w}(:,ii)=faces{m.o}(:,ii);
    else %Do L or l
        moved{m.y}(:,ii)=faces{m.o}(:,ii);
        moved{m.r}(:,ii)=faces{m.y}(:,ii);
        moved{m.o}(:,ii)=faces{m.w}(:,ii);
        moved{m.w}(:,ii)=faces{m.r}(:,ii);
    end

elseif strcmpi(move(1),'u') %Top

  if findstr(move,'p') %Do Up or up
      moved{m.r}(ii,:)=faces{m.b}(ii,:);
      moved{m.b}(ii,:)=faces{m.o}(ii,:);
      moved{m.o}(ii,:)=faces{m.g}(ii,:);
      moved{m.g}(ii,:)=faces{m.r}(ii,:);
      moved{m.y}=rot90(faces{m.y});
  else %Do U or u
      moved{m.r}(ii,:)=faces{m.g}(ii,:);
      moved{m.b}(ii,:)=faces{m.r}(ii,:);
      moved{m.o}(ii,:)=faces{m.b}(ii,:);
      moved{m.g}(ii,:)=faces{m.o}(ii,:);
      moved{m.y}=rot90(faces{m.y},3);
  end

end





%repeat the turn if we have a '2'
if findstr(move,'2')
    moved=rubiks.flipFace(move(1),moved);
end


