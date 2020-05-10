function [normsl,normsw,normpl,normpw]=normalization(sepallenght,sepalwidth,petallenght,petalwidth) %normalize the data set
normpl=(petallenght-min(petallenght))/(max(petallenght)-min(petallenght));
normpw=(petalwidth-min(petalwidth))/(max(petalwidth)-min(petalwidth));
normsl=(sepallenght-min(sepallenght))/(max(sepallenght)-min(sepallenght));
normsw=(sepalwidth-min(sepalwidth))/(max(sepalwidth)-min(sepalwidth));
end