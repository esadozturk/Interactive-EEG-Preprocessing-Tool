function comp = calculate_and_plot_ica_7(elec, data) % elec => need to think in GUI
    cfg = [];
    cfg.method = 'runica';
    cfg.numcomponent = length(data.label) - 1; % subtract 1 due to re-referencing
    comp = ft_componentanalysis(cfg, data);
    if length(comp.label) > 20
        comp_num = 20;
    else
        comp_num = length(comp.label);
    end

    cfg = [];
    cfg.elec = elec;
    layout = ft_prepare_layout(cfg);

    figure
    cfg = [];
    cfg.component = 1:comp_num;
    cfg.layout = layout;
    cfg.comment = 'no';
    cfg.colormap = 'jet';
    ft_topoplotIC(cfg, comp);
end