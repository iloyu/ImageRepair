image = imread('80001.bmp');
% [m,n,z] = size(image);
% if z>1
%     image = rgb2gray(image);
% end
% 
% result = median_filter(image, 3);

%  figure(1)
%  subplot(1,2,1);
%     imshow(image);
%     title('原图像');
%  subplot(1,2,2);
%     imshow(result);
%     title('中值滤波后');
s = size(image);
imager = image(253,255,16);
% imageg = image(:,:,2);
% imageb = image(:,:,3);
% R=reshape(imager,[s(1),s(2)]);
% G=reshape(imageg,[s(1),s(2)]);
% B=reshape(imageb,[s(1),s(2)]);


%partdate(:,:,:)=image(1:10,1:10,:);%取最左上角10X10的原始图像数据 

 imshow(imager);

% subplot(221);
% imshow(imager);
% title('r')
% subplot(222);
% imshow(imageg);
% title('g')
% subplot(223);
% imshow(imageb);
% title('b')
% subplot(224);
% imshow(image);
