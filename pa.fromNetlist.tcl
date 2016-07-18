
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CounterApp -dir "E:/Projects/counter/CounterApp/planAhead_run_3" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/Projects/counter/CounterApp/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/Projects/counter/CounterApp} }
set_property target_constrs_file "miniSpartan6-plus.ucf" [current_fileset -constrset]
add_files [list {miniSpartan6-plus.ucf}] -fileset [get_property constrset [current_run]]
link_design
