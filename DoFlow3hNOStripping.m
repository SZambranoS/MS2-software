function [tODE,DataODE] = DoFlow3hNOStripping(vectorparam)

save vectorparamused.mat vectorparam; 

v0=[0 0 0 0 0 0]';

v=v0;

[tODE_0,DataODE_0] = ode45(@FlowDetermNFkappaB_targetGene_nostripping,[0 36000],v0);

[nframes,m]=size(DataODE_0)

v0def=DataODE_0(nframes,:); 

S=10^5;
vectorparam(20)=S; 

save vectorparamused.mat vectorparam; 

[tODE,DataODE] = ode45(@FlowDetermNFkappaB_targetGene_nostripping,[0 3*3600],v0def);











end

