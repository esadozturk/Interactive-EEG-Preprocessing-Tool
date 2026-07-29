function epoched_data = epoch_data_5(data, options)
    arguments
        data
        options.mode = 'resting'; % default values
        options.length = 1;
        options.overlap = 0.5;
        options.path = '';
        options.event_type = {};
        options.event_value = {};
        options.pre_stim = 0.2;
        options.post_stim = 0.8;
    end

    if strcmp(options.mode, 'resting')
        cfg = [];
        cfg.length = options.length;
        cfg.overlap = options.overlap;
        epoched_data = ft_redefinetrial(cfg, data);
    elseif strcmp(options.mode, 'trigger')
        cfg = [];
        cfg.dataset = options.path;
        cfg.trialdef.eventtype = options.event_type;
        cfg.trialdef.eventvalue = options.event_value;
        cfg.trialdef.prestim = options.pre_stim;
        cfg.trialdef.poststim = options.post_stim;

        cfg = ft_definetrial(cfg);
        
        % we need to change the sample values in case the data is resampled
        original_data_header = ft_read_header(options.path);
        original_frequency = original_data_header.Fs;
        resampling_ratio = original_frequency / data.fsample;
        cfg.trl(:, 1:3) = round(cfg.trl(:, 1:3) ./ resampling_ratio);

        epoched_data = ft_redefinetrial(cfg, data);
    end
end