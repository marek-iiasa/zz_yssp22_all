* Add the following line in message_setup.gms file after loading the data from the model (data_load.gms): $INCLUDE MESSAGE/input_editor.gms
*technical_lifetime('R11_WEU', 'gas_cc', '2020') = 30;
*growth_activity_up('R14_RUS', 'gas_exp_weu', year_all, time) = 0.04;
*growth_activity_up('R14_MEA', 'gas_exp_weu', year_all, time) = 0.04;
*growth_activity_up('R14_AFR', 'gas_exp_weu', year_all, time) = 0.04;
*growth_activity_lo('R11_AFR', 'oil_extr_1', '2021', time) = -0.2;
*growth_activity_lo('R11_PAS', 'coal_extr', '2021', time) = -0.2;
*initial_activity_up('R14_RUS', 'elec_i', '2035', time) = 0.01;
*initial_activity_up('R14_MEA', 'elec_i', '2035', time) = 0.01;
*initial_activity_up('R14_SAS', 'elec_i', '2035', time) = 0.01;
*historical_activity('R14_RUS', 'gas_exp_ubm', '2015', mode, time) = 154.4;
*bound_activity_lo('R11_EEU', 'coal_ppl_u', '2025', mode, time) = 0.0;
*bound_activity_lo('R11_FSU', 'coal_ppl_u', '2025', mode, time) = 0.0;
*bound_activity_lo('R14_WEU', 'h2_fc_I', '2050', mode, time) = 2;
*bound_activity_lo('R14_WEU', 'h2_fc_trp', '2055', mode, time) = 0.1;
*bound_activity_lo('R14_SAS', 'coal_ppl_u', '2020', mode, time) = 0.0;
*bound_activity_lo('R14_CPA', 'coal_ppl_u', '2035', mode, time) = 0.0;
*growth_activity_lo(node, 'loil_ppl', year_all, time) = -0.05;
*relation_activity('res_marg', 'R14_EEU', year_all, 'R14_EEU', 'elec_t_d', year_all,'M1') = -0.24;
*growth_activity_lo('R14_NAM', 'LNG_exp', year_all, time) = 0.05;
*historical_activity('R14_NAM', 'LNG_prod', '2015','M1', time) = 47;
*output('R14_CAS', 'elec_exp', year_all, year_all, 'M1', 'R14_CAS', 'electr', level, time, time) = 0;
*input('Indonesia', 'loil_rc', year_all, year_all, 'M1', 'Indonesia', 'lightoil', 'final', 'year', 'year') = 1;
*bound_emission('World','TCE','all','cumulative') =2700;
*bound_new_capacity_lo('R14_WEU', 'h2_fc_RC', year_all) = 0.001;

