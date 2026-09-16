# Ge-Se SW potential
pair_style      sw
pair_coeff      * * GeSe.sw Ge Se
neighbor        0.2 bin
neigh_modify    every 1 check yes
timestep        1.0e-3

comm_modify     cutoff 8.2

# outputs
thermo          1000
thermo_style    custom step temp pe press
#dump            2 all custom 1000 md.lammpstrj id type x y z

