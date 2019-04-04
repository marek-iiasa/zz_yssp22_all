* Workflow for adding new parameters and equations in message_ix
* 1. Loading new sets and parameters from scenario (GDX)
* - in file "data_load", new sets and parameters should be loaded

* 2. If needed to define new sets in GAMS:
* 2.1. GAMS related sets should be declared in the file "sets_maps_def"
* 2.2. If GAMS related sets are related to time/period, it is recommended to declare them in the file "sets_maps_def"

* 3. If needed to define new mappings:
* 3.1. Mapppings either can be added in in file "data_load"
* 3.2. if the mapping is related to time in "period_parameter_assignment"

