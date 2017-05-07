function genCrossFigs

[y,o,g,b,r,w]=rubiks.colorDefs;



makeCube({{4,8,r},{4,4,w},{1,2,o}})
saveCube('OT_case2_FpDL.eps')

makeCube({{4,6,o},{4,8,w},{6,2,r}},[-110,30])
saveCube('OT_case2_DL.eps')


makeCube({{4,6,w},{4,2,o},{5,2,w} })
saveCube('OT_case2_FDL.eps')

makeCube({{4,2,w},{4,4,o},{1,2,w},{5,2,r} })
saveCube('OT_case2_RpUL2.eps')


makeCube({{5,8,g},{5,4,b},{1,6,w} })
saveCube('OT_case1_RD2R.eps')

makeCube({{5,8,g},{5,6,b} })
saveCube('OT_case1_D2R.eps')



function makeCube(pieces, viewDir)
    %pieces is a cell array:{ {faceToAdd,pieceIndexOnFaceToAdd, color}, ...}
    % 1 is yellow face, 4, is blue, 5 is red
    faces=rubiks.centresOnly;
    for ii=1:length(pieces)
        faces{pieces{ii}{1}}{pieces{ii}{2}}=pieces{ii}{3};
    end
    clf
    rubiks.draw3DCube(faces)
    if nargin<2
        viewDir=[-70,30];
    end
    view(viewDir)


function saveCube(fname)
    fname = fullfile('./cross/',fname);
    set(gcf,'PaperPosition',[0,0,8,8],'Renderer','painters')
    print('-depsc',fname)