clear all;
image = imread('80001.bmp');
figure,imshow(image),title('Original Image');  
%bw=imbinarize(image,0.3);  
%figure,imshow(bw),title('Gray Image');  
rgb=[255,255,0];  
img=extract_rgb(image,rgb);  
figure,imshow(uint8(img)),title('Repaired Image');  