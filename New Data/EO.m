S2EO = cell2mat(struct2cell(load("S02_restingPre_EO (1).mat")));
S3EO = cell2mat(struct2cell(load("S03_restingPre_EO.mat")));
S4EO = cell2mat(struct2cell(load("S04_restingPre_EO.mat")));
S5EO = cell2mat(struct2cell(load("S05_restingPre_EO.mat")));
S6EO = cell2mat(struct2cell(load("S06_restingPre_EO.mat")));
S7EO = cell2mat(struct2cell(load("S07_restingPre_EO.mat")));
S8EO = cell2mat(struct2cell(load("S08_restingPre_EO.mat")));
S9EO = cell2mat(struct2cell(load("S09_restingPre_EO.mat")));
S10EO = cell2mat(struct2cell(load("S10_restingPre_EO.mat")));

EOav = (S2EO + S3EO + S4EO + S5EO + S6EO + S7EO + S8EO + S9EO + S10EO)/9;

EOav = EOav';
