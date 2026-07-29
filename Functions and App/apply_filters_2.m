function filtered_data = apply_filters_2(hpass_f, lpass_f, notch_f, data)
    arguments
        hpass_f (1,1) {mustBeNumeric, mustBePositive}
        lpass_f (1,1) {mustBeNumeric, mustBePositive}
        notch_f (1,1) {mustBeNumeric, mustBePositive}
        data
    end
    cfg = [];
    cfg.hpfilter = 'yes';
    cfg.hpfreq = hpass_f;
    cfg.lpfilter = 'yes';
    cfg.lpfreq = lpass_f;
    cfg.dftfilter = 'yes';
    cfg.dftfreq = [notch_f 2*notch_f 3*notch_f];
    filtered_data = ft_preprocessing(cfg, data);
end