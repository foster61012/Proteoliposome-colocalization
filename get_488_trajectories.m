close all
% clear all;
path = '/Users/peterfoster/Desktop/061417_lps/slide13_coloc_plusA_1/488/';
D = dir([path '*.tif']);
N = size(D,1);
filename = [path D(1).name];
[d1 d2] = size(imread(filename, 'tiff', 1));
pos_list_488 = [0 0 0];


for j = 1:N
    j
image_488 = double(imread([path D(j).name]));
image_488=imcrop(image_488,[50 0 375 512]);
pk = pkfnd(image_488,3500,4);
cnt = cntrd(image_488,pk,15);
x = cnt(:,1); y= cnt(:,2);
        for i = 1:size(cnt,1)
            pos_list_488 = [pos_list_488; cnt(i,1) cnt(i,2) j];
        end
        
imshow(image_488,[0 10000]); colormap('gray');truesize
hold on
plot(x,y,'ro','Markersize',10)
drawnow
G(j)=getframe;
end

 pos_list_488 = pos_list_488(2:end,:);
