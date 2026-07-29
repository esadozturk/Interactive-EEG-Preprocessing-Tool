function resampled_data = resample_data_1(resample_frequency, data)
    arguments
        resample_frequency (1,1) {mustBeNumeric, mustBePositive}
        data
    end    

    cfg = [];
    cfg.resamplefs = resample_frequency;
    resampled_data = ft_resampledata(cfg, data);    
end