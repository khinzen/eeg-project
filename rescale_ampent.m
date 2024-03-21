% rescales and runs all data through ampent.m, then puts together the 
% results into a single vertical matrix

rs2ec = rescaleeeg(S2EC');
as2ec = ampent(rs2ec,0);
rs2eo = rescaleeeg(S2EO');
as2eo = ampent(rs2eo,1);

rs3ec = rescaleeeg(S3EC');
as3ec = ampent(rs3ec,0);
rs3eo = rescaleeeg(S3EO');
as3eo = ampent(rs3eo,1);

rs4ec = rescaleeeg(S4EC');
as4ec = ampent(rs4ec,0);
rs4eo = rescaleeeg(S4EO');
as4eo = ampent(rs4eo,1);

rs5ec = rescaleeeg(S5EC');
as5ec = ampent(rs5ec,0);
rs5eo = rescaleeeg(S5EO');
as5eo = ampent(rs5eo,1);

rs6ec = rescaleeeg(S6EC');
as6ec = ampent(rs6ec,0);
rs6eo = rescaleeeg(S6EO');
as6eo = ampent(rs6eo,1);

rs7ec = rescaleeeg(S7EC');
as7ec = ampent(rs7ec,0);
rs7eo = rescaleeeg(S7EO');
as7eo = ampent(rs7eo,1);

rs8ec = rescaleeeg(S8EC');
as8ec = ampent(rs8ec,0);
rs8eo = rescaleeeg(S8EO');
as8eo = ampent(rs8eo,1);

rs9ec = rescaleeeg(S9EC');
as9ec = ampent(rs9ec,0);
rs9eo = rescaleeeg(S9EO');
as9eo = ampent(rs9eo,1);

rs10ec = rescaleeeg(S10EC');
as10ec = ampent(rs10ec,0);
rs10eo = rescaleeeg(S10EO');
as10eo = ampent(rs10eo,1);

final_ampent = [as2ec;as2eo;as3ec;as3eo;as4ec;as4eo;as5ec;as5eo;as6ec;as6eo;as7ec;as7eo;as8ec;as8eo;as9ec;as9eo;as10ec;as10eo];
save('final_ampent.mat',"final_ampent")