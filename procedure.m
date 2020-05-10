function procedure(dataset,category,epoch) %combine the other functions
[trainingdataset,testdataset]=define(dataset,category);
[wl1,wl2]=traindata(trainingdataset,epoch);
[counttest1,counttest2,counttest3]=test(testdataset,wl1,wl2);
fprintf('Training dataset\n');
fprintf('SepalLength SepalWidth PetalLength PetalWidth Category\n');
disp(trainingdataset);
fprintf('No of epochs:%5d\n',epoch);
fprintf('Weight matrices after %5d no of epochs,\n',epoch);
fprintf('Hidden Layer:\n');
disp(wl1);
fprintf('Outer Layer:\n');
disp(wl2);
fprintf('\n\n');
fprintf('Test dataset\n');
fprintf('SepalLength SepalWidth PetalLength PetalWidth Category\n');
disp(testdataset);
fprintf('Classification after %5d no of epochs',epoch);
fprintf('\nIRIS Setosa          classified:%3d   not classified:%3d',counttest1,25-counttest1);
fprintf('\nIRIS Versicolour     classified:%3d   not classified:%3d',counttest2,25-counttest2);
fprintf('\nIRIS Virginica       classified:%3d   not classified:%3d',counttest3,25-counttest3);
end