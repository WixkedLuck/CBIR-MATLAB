function [counts] =getHistCounts(imG,nBin,range)
counts=zeros(1,nBin);
binWidth=(range(2)-range(1)+1)/nBin;

for binIdx=1:nBin
    lb=(binIdx-1) * binWidth;
    ub=lb+binWidth-1;
    
    counts(binIdx)=sum(lb<= imG(:) & imG(:) <=ub);
    
end

  

counts=counts ./ numel(imG);
end
