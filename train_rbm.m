function [rbm, features] = train_rbm(rbm, x, opts)
	n = numel(rbm);

	rbm{1} = train_rbm_helper(rbm{1}, x, opts);
	
	for i = 2 : n
		x = rbmup(rbm{i-1}, x);
		
		rbm{i} = train_rbm_helper(rbm{i}, x, opts);
	end

	features = rbmup(rbm{n}, x);
end

