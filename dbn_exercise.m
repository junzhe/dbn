trainData = loadCIFAR10Images('cifar-10-batches-mat/data_batch_1.mat');
trainLabels = loadCIFAR10Labels('cifar-10-batches-mat/data_batch_1.mat');
trainData = trainData';
trainLabels(trainLabels == 0) = 10; % Remap 0 to 10 since our labels need to start from 1

lambda = 3e-3;

rbm_sizes = [size(trainData, 2), 100, 100];

opts.numepochs =   1;
opts.batchsize = 100;
opts.momentum = 0;
opts.alpha = 1;

rbm = initialize_rbm(rbm_sizes, opts);

[rbm, rbm_features] = train_rbm(rbm, trainData, opts);

options.maxIter = 100;

softmax_model = softmaxTrain(100, 10, lambda, rbm_features', trainLabels, options);

dbn_softmax_opt_theta= softmaxModel.optTheta(:);

