function [ labels ] = loadCIFAR10Labels( addr )
    data_set = load(addr);
    labels = double(data_set.labels);
end

