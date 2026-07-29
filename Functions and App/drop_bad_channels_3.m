function [clean_data, dropped_labels] = drop_bad_channels_3(data)
    cfg = [];
    cfg.method = 'summary';
    clean_data = ft_rejectvisual(cfg, data);
    % calculate dropped labels
    original_labels = data.label;
    resulting_labels = clean_data.label;
    dropped_labels = setdiff(original_labels, resulting_labels);
end