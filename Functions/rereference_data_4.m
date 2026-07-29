function rereferenced_data = rereference_data_4(clean_data)
    cfg = [];
    cfg.channel = {'all'};
    cfg.reref = 'yes';
    cfg.refmethod = 'avg';
    cfg.refchannel = {'all'};
    rereferenced_data = ft_preprocessing(cfg, clean_data);
end