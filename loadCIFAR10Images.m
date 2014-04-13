function [ data ] = loadCIFAR10Images( addr )
    data_set = load(addr);
    data = double(data_set.data')/255;
end

