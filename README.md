# Proteoliposome colocalization
MATLAB code used to identify pairs of colocalized proteoliposomes from confocal microscopy images. Centroid identification is based on the MATLAB implementation of the Crocker and Grier particle tracking algorithm developed by Daniel Blair and Eric Dufresne (http://site.physics.georgetown.edu/matlab/), which is a dependency for the code here and must be downloaded prior to use. 

Use get_488_trajectories.m and get_560_trajectories.m to identify centroids in the 488nm and 560nm channels respectively. Parameters can be adjusted using the tutorial found at http://site.physics.georgetown.edu/matlab/tutorial.html. Once centroids have been identified in each channel, use pair_channels_v3.m to identify colocalized particles.
