get_560_trajectories
get_488_trajectories

Colocalization_radius = 2; %max centroid separation distance in pixels

coloc_image=zeros(size(image_488,1),size(image_488,2),3);
coloc_image(:,:,1) = 5*image_560./max(max(image_560));
coloc_image(:,:,2) = 2.5*image_488./max(max(image_488));
image(coloc_image)
hold on
number_IM = size(pos_list_560,1)
number_OM = size(pos_list_488,1)
Colocalization_count = 0;
for i = 1:number_IM
    i
    plot(pos_list_560(i,1),pos_list_560(i,2),'ro','markersize',30)
    hold on
    temp_pos_IM = [pos_list_560(i,1),pos_list_560(i,2)];
    for j = 1:number_OM
        plot(pos_list_488(j,1),pos_list_488(j,2),'go','markersize',25)
        temp_pos_OM = [pos_list_488(j,1),pos_list_488(j,2)];
        if norm(temp_pos_IM-temp_pos_OM)<Colocalization_radius
            Colocalization_count=Colocalization_count+1;
        end
            
    end
end
    
Colocalization_count