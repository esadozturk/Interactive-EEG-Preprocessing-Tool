function artifact_eliminated_data = reject_components_7(comp, dropped_comp, data)
    cfg = [];
    cfg.component = dropped_comp;
    artifact_eliminated_data = ft_rejectcomponent(cfg, comp, data);
end