function good_epochs_data = remove_bad_epochs_6(data)
    cfg = [];
    cfg.method = 'summary';
    good_epochs_data = ft_rejectvisual(cfg, data);
end