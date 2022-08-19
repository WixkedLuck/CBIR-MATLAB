
imC = imread("0VCPkTYX.JPG");

imG = rgb2gray(imC);

%reduce image by 20
Red20 = imG - 20;

% reduce image by 10
Red10 = imG - 10;

%increase image by 10
inc10 = imG + 10;
%increase image by 20
inc20 = imG + 20;

%first plot
subplot(2,5,1);
imshow(Red20);
title("Reduced by 20");

subplot(2,5,6);
imhist(Red20);

xlabel("Pixel Value");
ylabel("Frequency");
title("Histogram");

%second Plot
subplot(2,5,2);
imshow(Red10);

title("Reduced by 10");

subplot(2,5,7);
imhist(Red10);

xlabel("Pixel Value");
ylabel("Frequency");
title("Histogram");

% Third Plot
subplot(2,5,3);
imshow(imG);

title("Orignal Image");


subplot(2,5,8);
imhist(imG);

xlabel("Pixel Value");
ylabel("Frequency");
title("Histogram");

%fourth plot
subplot(2,5,4);
imshow(inc10);

title("Increase by 10");


subplot(2,5,9);
imhist(inc10);

xlabel("Pixel Value");
ylabel("Frequency");
title("Histogram");

%fifth plot
subplot(2,5,5);
imshow(inc20);

title("Increase by 20");


subplot(2,5,10);
imhist(inc20);

% Label x,y and title 
xlabel("pixel value");
ylabel("frequency");
title("histogram");