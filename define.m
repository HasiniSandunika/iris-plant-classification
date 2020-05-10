function [trainingdataset,testdataset]=define(dataset,category) %categorize the data set in to two categories(both test and train data sets) as 75*5 matrices
 y=transpose(categorizationdata(category));
 [normsl,normsw,normpl,normpw]=normalization(dataset(:,1),dataset(:,2),dataset(:,3),dataset(:,4));
 data=[normsl normsw normpl normpw y];
 trainingdataset=vertcat(data(1:25,:),data(51:75,:),data(101:125,:));
 testdataset=vertcat(data(26:50,:),data(76:100,:),data(126:150,:));
end