S2EC = cell2mat(struct2cell(load("S02_restingPre_EC.mat")));
S3EC = cell2mat(struct2cell(load("S03_restingPre_EC.mat")));
S4EC = cell2mat(struct2cell(load("S04_restingPre_EC.mat")));
S5EC = cell2mat(struct2cell(load("S05_restingPre_EC.mat")));
S6EC = cell2mat(struct2cell(load("S06_restingPre_EC.mat")));
S7EC = cell2mat(struct2cell(load("S07_restingPre_EC.mat")));
S8EC = cell2mat(struct2cell(load("S08_restingPre_EC.mat")));
S9EC = cell2mat(struct2cell(load("S09_restingPre_EC.mat")));
S10EC = cell2mat(struct2cell(load("S10_restingPre_EC.mat")));

ECav = (S2EC + S3EC + S4EC + S5EC + S6EC + S7EC + S8EC + S9EC + S10EC)/9;

ECav;