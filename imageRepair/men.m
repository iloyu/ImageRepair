function meidan = median(in_img,x,y )
median=zeros(3)
for i=-1:1
    for j=-1:1
     region_r((i+1)*3+(j+1)+1)=in_img(x+i,y+j,1);
     region_g((i+1)*3+(j+1)+1)=in_img(x+i,y+j,2);
     region_b((i+1)*3+(j+1)+1)=in_img(x+i,y+j,3);
    end
end
median(1)=  median(region_r,9);
median(2)=  median(region_g,9);
median(3)=  median(region_b,9);
      

