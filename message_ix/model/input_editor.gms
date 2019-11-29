
*technical_lifetime('R11_WEU', 'gas_cc', '2020') = 30;
*growth_activity_up('R14_RUS', 'nuc_hc', year_all, time) = 0.05;
*growth_activity_up('R14_SCS', 'gas_exp_weu', '2020', time) = 0.5;initial_activity_up('R14_RUS', 'elec_i', '2035', time) = 0.01;
*initial_activity_up('R14_MEA', 'elec_i', '2035', time) = 0.01;
*initial_activity_up('R14_NAM', 'LNG_exp', '2020', time) = 5;
*historical_activity('R14_RUS', 'gas_exp_ubm', '2015', mode, time) = 154.4;
*bound_activity_up('node', 'meth_coal_ccs', 'year_all', 'M1', time) = 100;
*bound_activity_lo('R14_NAM', 'LNG_exp', '2030', 'M1', time) = 0;
*bound_activity_up('R14_NAM', 'LNG_imp', '2020', 'M1', time) = 4.4;
*bound_activity_lo('R11_FSU', 'coal_ppl_u', '2025', mode, time) = 0.0;
*bound_activity_lo('R11_WEU', 'coal_ppl_u', '2025', mode, time) = 0.0;
*bound_activity_lo('R11_WEU', 'coal_ppl_u', '2020', mode, time) = 0.0;
*bound_activity_lo('R14_SCS', 'gas_exp_weu', '2020', mode, time) = 23.5;
*growth_activity_lo(node, 'loil_ppl', year_all, time) = -0.05;
*relation_activity('res_marg', 'R14_EEU', year_all, 'R14_EEU', 'elec_t_d', year_all,'M1') = -0.24;
*growth_activity_up('R14_CPA', 'LNG_imp', year_all, time) = 0.5;
*growth_activity_up('R14_CPA', 'LNG_regas', year_all, time) = 0.5;
*growth_activity_up('R14_PAO', 'LNG_imp', year_all, time) = 0.5;
*growth_activity_up('R14_GLB', 'LNG_bunker', year_all, time) = 0.2;
*historical_activity('R14_NAM', 'LNG_prod', '2015','M1', time) = 47;
*output('R14_CAS', 'elec_exp', year_all, year_all, 'M1', 'R14_CAS', 'electr', level, time, time) = 0;
*bound_emission('World','TCE','all','cumulative') =3630;
*bound_new_capacity_up('R14_SAS', 'gas_hpl', '2070') = 3.7;
*bound_new_capacity_up('R14_SAS', 'gas_hpl', '2080') = 1.7;
*bound_new_capacity_up('R14_SAS', 'bio_hpl', '2090') = 3.1;
*bound_new_capacity_up('R14_SAS', 'bio_hpl', '2100') = 4.2;
*bound_new_capacity_up('R14_SAS', 'bio_hpl', '2110') = 1.95;
*bound_new_capacity_up('R14_SAS', 'hydro_lc', '2070') = 0.7;
*initial_new_capacity_up('R11_SAS', 'hydro_hc', '2020') = 0.25;
*growth_new_capacity_lo('R11_SAS', 'coal_ppl', year_all) = -0.3;
*initial_new_capacity_lo('R11_SAS', 'coal_ppl', year_all) = 0.5;
*bound_total_capacity_up('R11_SAS', 'coal_ppl', '2060') = 0.5;
*bound_total_capacity_up('R11_SAS', 'coal_ppl', '2055') = 0.5;
*relation_activity('UE_industry_th_gas', 'R14_NAM', year_all, 'R14_NAM', 'useful_industry_th', year_all, 'M1') = -0.1;
*relation_activity('UE_feedstock_gas', 'R14_NAM', year_all, 'R14_NAM', 'useful_feedstock', year_all, 'M1') = -0.1;
*demand_fixed('R11_SAS', 'non-comm', 'useful', year_all, time) = 0;



