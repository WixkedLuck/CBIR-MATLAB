importPath=['..' filesep() 'Data' filesep() 'import' filesep()];

%scan the import folder to retrive file info
filelist=dir([importPath '*.jpg']);
%get data size
datasetsize=length(filelist);
%create db
db=zeros(datasetsize,64);
for rIdx=1:datasetsize 

imC=imread([importPath filelist(rIdx).name]);
%convert rgb image to 6-bit 
im6cc = rgb26ccFast(imC);
%get histogram count
db(rIdx, :)=getHistCounts(im6cc,64, [0,63]);
end

%save db 
save(['..' filesep() 'Data' filesep() 'meta' filesep() 'db.mat'],'db');