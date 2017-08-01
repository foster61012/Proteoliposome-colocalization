clear all;close all

path = '/Users/peterfoster/Desktop/061417_lps/slide13_coloc_plusA_1/565/';
D = dir([path '*.tif']);
N = size(D,1);
filename = [path D(1).name];
[d1 d2] = size(imread(filename, 'tiff', 1));
pos_list_560 = [0 0 0];
  a_test = double(imread([path D(1).name]));


for j = 1:N
    j
image_560 = double(imread([path D(j).name]));
image_560=imcrop(image_560,[50 0 375 512]);
pk = pkfnd(image_560,4000,4);
cnt = cntrd(image_560,pk,15);
x = cnt(:,1); y= cnt(:,2);
        for i = 1:size(cnt,1)
            pos_list_560 = [pos_list_560; cnt(i,1) cnt(i,2) j];
        end
        
imshow(image_560,[0 10000]); colormap('gray');truesize
hold on
plot(x,y,'ro','Markersize',10)
drawnow
G(j)=getframe;
end

 pos_list_560 = pos_list_560(2:end,:);
