function [wl1,wl2]=traindata(dataset,epoch) %return the weight matrices of both layers after n no. of epochs
wl1=[2.0702618525493928 1.0984474116568821 1.7356629528775489 -0.74458310074837808;-18.806198146576847 14.617056744021157 -11.220835326665041 -62.064296654647961;-15.044958643912461 25.769036058698216 -20.10820299597966 11.973404495272774];
wl2=[-1.0696257793766789e-07 -0.50000005029853933 -0.50000004877987447]; %or weights can be assigned randomly with rand(3,4) and rand(1,3) 
out=ones(75,1); %calulated output matrix at nth epoch
errl1=ones(3,1); %weight matrix of the jth instance
epo=1;
eta=0.7;
graph=ones(epoch,1); %used to draw the graph
 while epo<=epoch 
    for a= 1:75
        ol1=logsig(wl1*transpose(dataset(a,1:4)));
        ol2=1/(1+exp(-1*wl2*ol1));
        errl2=ol2*(1-ol2)*(dataset(a,5)-ol2);
       for r=1:3
           errl1(r)=ol1(r)*(1-ol1(r))*errl2*wl2(r);
       end    
       wl2=wl2+eta*errl2*transpose(ol1);
       for j=1:3
           wl1(j,:)=wl1(j,:)+errl1(j)*dataset(a,1:4)*eta;  
       end     
    end
    for p=1:75
        out(p)=1/(1+exp(-1*wl2*wl1*transpose(dataset(p,1:4))));  
    end
    mse=0;
    for u=1:75
     mse=mse+(out(u)-dataset(u,5))*(out(u)-dataset(u,5));
    end
    mseepo=mse/75; %MSE is calulated from sample data
    graph(epo)=mseepo;
    epo=epo+1;
 end
 f1=figure; % plot of epochs vs. MSE
 line((1:epoch),graph);
title('Epochs vs. MSE')
xlabel('No of epochs')
ylabel('MSE')
end
        
        
        