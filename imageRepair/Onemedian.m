function Mymedian = Onemedian(in_img,x,y,m )
Mymedian=[0,0,0];
border=2*m+1;
square=border*border;
 region_r=zeros(1,square);
  region_g=zeros(1,square);
   region_b=zeros(1,square);
 
%    pad=padarray(in_img,[border,border],'replicate');
for i=-m:m
    for j=-m:m
%         if(x==1)
%             x=2;
%         end
%         if(y==1)
%             y=2;
%         end
     region_r((i+m)*border+(j+m)+1)=in_img(x+i,y+j,1);
     region_g((i+m)*border+(j+m)+1)=in_img(x+i,y+j,2);
     region_b((i+m)*border+(j+m)+1)=in_img(x+i,y+j,3);
    end
end
Mymedian(1)=median(region_r);
Mymedian(2)=median(region_g);
Mymedian(3)=median(region_b);
      

