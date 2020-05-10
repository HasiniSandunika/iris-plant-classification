function y=categorizationdata(Irissetosa) %convert the response variable,from qualitative to numerical format
for q=1:150
 if  strcmp(Irissetosa(q),'Iris-setosa') == 1 
     y(q)=0;
 elseif strcmp(Irissetosa(q),'Iris-versicolor') == 1
     y(q)=0.5;
 else 
     y(q)=1;
 end
end
end