function rbm = initialize_rbm(sizes, opts)
	rbm = [];
	for i = 1 : numel(sizes) - 1
		rbm{i}.alpha = opts.alpha;
		rbm{i}.momentum = opts.momentum;

	        rbm{i}.W  = zeros(sizes(i + 1), sizes(i));
        	rbm{i}.vW = zeros(sizes(i + 1), sizes(i));

        	rbm{i}.b  = zeros(sizes(i), 1);
        	rbm{i}.vb = zeros(sizes(i), 1);

        	rbm{i}.c  = zeros(sizes(i + 1), 1);
        	rbm{i}.vc = zeros(sizes(i + 1), 1);
	end
end	
