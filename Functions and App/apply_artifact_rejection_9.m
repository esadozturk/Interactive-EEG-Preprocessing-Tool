function preprocessed_data = apply_artifact_rejection_9(data)
    cfg = [];
    cfg.method = 'summary';
    preprocessed_data = ft_rejectvisual(cfg, data);
end