STORAGE_BALANCE(node,commodity,level,year,time)$( map_tec(node,storage_tec,year) )..
    STORAGE(node,commodity,level,year,time)
* ignoring the the fixed amount of storage in that time (e.g., the storage content in the first subannual period)
    - commodity_storage(node,commodity,level,year,time) =E=
* increase in the content of storage due to the activity of charging technologies located at 'location' sending to 'node', and 'time2' sending to 'time'
        output(location,charge_tec,vintage,year,mode,node,commodity,level,time2,time)
        * duration_time_rel(time,time2) * ACT(location,charge_tec,vintage,year,mode,time2)
* decrease in the content of storage due to the activity of discharging technologies located at 'location' sending to 'node', and 'time2' sending to 'time'
        - input(location,discharge_tec,vintage,year,mode,node,commodity,level,time2,time)
        * duration_time_rel(time,time2) * ACT(location,discharge_tec,vintage,year,mode,time2) )
* storage content in the subannual timestep before
    + SUM((time2,year2)$seq_year_time(year2,year,time2,time), STORAGE(node,commodity,level,year2,time2) *
* considering storage losses due to keeping the storage media between two subannual timesteps
    (1 - storage_loss(node,commodity,level,year2,time2)) ) ;

STORAGE_BOUND_UP(node,commodity,level,year,time)$( map_storage_level(node,commodity,level,year,time) )..
    STORAGE(node,commodity,level,year,time) =L= map_storage_tec(node,tec,commodity,level,year,time) * duration_time(time) * capacity_factor(node,inv_tec,vintage,year,time) * CAP(node,inv_tec,vintage,year) ;

STORAGE_BOUND_LO(node,commodity,level,year,time)$( map_storage_level(node,commodity,level,year,time) AND bound_storage_up(node,commodity,level,year,time) )..
    STORAGE(node,commodity,level,year,time) =G= map_storage_tec(node,tec,commodity,level,year,time) * CAP(node,tec,vintage,year) *
    storage_lo_factor(node,commodity,level,year,time) ;


* mapping of sequence of subannual time steps and periods over the model horizon
*seq_period(year_all,year_all2)$( ORD(year_all) + 1 = ORD(year_all2) ) = yes
 seq_year_time(year_all,year_all2,time,time2)$((ORD(year_all) <= ORD(year_all2)) AND (seq_time(time, order) + 1 = seq_time(time2, order2) ) = yes


