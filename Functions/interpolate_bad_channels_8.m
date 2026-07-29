function interpolated_data = interpolate_bad_channels_8(elec, dropped_labels, data)
    if isempty(dropped_labels)
        interpolated_data = data;
        return;
    end

    cfg = [];
    cfg.method = 'distance';
    cfg.elec = elec;
    neighbours = ft_prepare_neighbours(cfg);

    cfg = [];
    cfg.badchannel = dropped_labels;
    cfg.neighbours = neighbours;
    cfg.elec = elec;
    cfg.method = 'spline';
    interpolated_data = ft_channelrepair(cfg, data);
end