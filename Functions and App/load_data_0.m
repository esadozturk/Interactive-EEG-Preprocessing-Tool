function data = load_data_0(path)
    if isfile(path)
        cfg = [];
        cfg.dataset = path;
        data = ft_preprocessing(cfg);
    else
        error('File does not exist.');
    end
end
