function [out_img] = extract_rgb(in_img,color_rgb )  
%UNTITLED2 Summary of this function goes here  
% in_img  输入图像 color_rgb 需要分割的rgb像素值  
% 提取RGB彩色图像中的某一个颜色  
[rol, row,mut]=size(in_img);  
out_img=zeros([rol,row,3]);  
m=10;
for x=m+1:(rol-1-m)  
    for y=1+m:(row-1-m)  
    R=in_img(x,y,1);  
    G=in_img(x,y,2);  
    B=in_img(x,y,3);  
    if(abs(color_rgb(1)-R)<35&&abs(color_rgb(2)-G)<35&&abs(B-color_rgb(3))<200)
            out_img(x,y,:)=Onemedian(in_img,x,y,m);
    else
   out_img(x,y,1)=R;
   out_img(x,y,2)=G;
   out_img(x,y,3)=B;
    
    end  
    end  
end  
return;  
end
