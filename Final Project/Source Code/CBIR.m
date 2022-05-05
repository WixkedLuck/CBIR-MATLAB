importPath = ['..' filesep() 'Data' filesep() 'import'];
filename= uigetfile([importPath filesep() '*.jpg']);
imQ= imread([importPath filesep() filename]);
im6ccQ = rgb26ccFast(imQ);
q= getHistCounts(im6ccQ, 64, [0,63]);

load(['..' filesep() 'Data' filesep() 'meta' filesep() 'db.mat'],'db');

D= zeros(length(db),1);
for tIdx = 1:length(db)
    p=db(tIdx,:)
    D(tIdx,1)= getDistance(p, q);
    
end
top20idx = idx(1:20);
[~, idx] = sortrows(D); 

%scan the import folder to retrive file info
filelist=dir([importPath filesep() '*.jpg']);

figure(1)
subplot(5,5,1), imshow(imQ);
for tIdx = 1:20
    imT= imread([importPath filesep() filelist(top20idx(tIdx)).name]);
    subplot(5,5,5+tIdx), imshow(imT);
end

save(['..' filesep() 'Data' filesep() 'meta' filesep() 'idx.mat'],'idx');