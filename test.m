function [counttest1,counttest2,counttest3]=test(dataset,wghtl1,wghtl2) %test the data set
counttest1=0;
counttest2=0;
counttest3=0;
out1=ones(25,1);
out2=ones(25,1);
out3=ones(25,1);
set1=dataset(1:25,:);
set2=dataset(26:50,:);
set3=dataset(51:75,:);
for u=1:25
    out1(u)=1/(1+exp(-1*wghtl2*wghtl1*transpose(set1(u,1:4))));
      if (abs(set1(u,5)-out1(u))<0.01)
          counttest1=counttest1+1; 
      end    
end
for y=1:25
    out2(y)=1/(1+exp(-1*wghtl2*wghtl1*transpose(set2(y,1:4))));
     if (abs(set2(y,5)-out2(y))<0.01)
         counttest2=counttest2+1;          
    end
end
for z=1:25
    out3(z)=1/(1+exp(-1*wghtl2*wghtl1*transpose(set3(z,1:4))));
     if (abs(set3(z,5)-out3(z))<0.01)
         counttest3=counttest3+1;       
    end
end
out=[out1;out2;out3];
f2=figure; %scatter plo between instances vs. output
gscatter((1:75),out,dataset(:,5));
title('Instances vs. Output');
xlabel('instances of the test dataset')
ylabel('Output')
end