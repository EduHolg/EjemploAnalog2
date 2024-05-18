v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 490 -610 1290 -210 {flags=graph
y1=-0.0015
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
out
out_parax"
color="7 4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 490 -160 1290 240 {flags=graph
y1=-2.5e-06
y2=0.0039
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 6"
node="i(vmeas)
i(vmeas1)"}
N 140 -510 160 -510 {
lab=vss}
N 160 -450 160 -440 {
lab=GND}
N 240 -510 260 -510 {
lab=vdd}
N 260 -450 260 -440 {
lab=GND}
N -60 -290 -60 -270 {
lab=#net1}
N 20 -290 20 -270 {
lab=vss}
N -180 -220 -170 -220 {
lab=in}
N 130 -220 240 -220 {
lab=#net2}
N 200 -220 200 -190 {
lab=#net2}
N 200 -130 200 -110 {
lab=GND}
N 300 -220 330 -220 {
lab=out}
N -60 -40 -60 -20 {
lab=#net3}
N 20 -40 20 -20 {
lab=vss}
N -180 30 -170 30 {
lab=in}
N 130 30 240 30 {
lab=#net4}
N 200 30 200 60 {
lab=#net4}
N 200 120 200 140 {
lab=GND}
N 300 30 330 30 {
lab=out_parax}
C {devices/code.sym} -330 -530 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 280 -600 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {inverter.sym} -20 -220 0 0 {name=x1}
C {devices/vsource.sym} 160 -480 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 140 -510 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 160 -440 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 -480 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 240 -510 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 260 -440 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 20 -290 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -60 -350 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} -180 -220 0 0 {name=p6 lab=in}
C {devices/opin.sym} 330 -220 0 0 {name=p7 lab=out}
C {devices/res.sym} 270 -220 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 200 -160 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 200 -110 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} -650 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.options savecurrents
.control
save all
tran 100p 200n
write testbench.raw
.endc
"}
C {devices/ammeter.sym} -60 -320 0 0 {name=Vmeas}
C {inverter.sym} -20 30 0 0 {name=x2
schematic=inverter_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/inverter.sim.spice]"
}
C {devices/lab_pin.sym} 20 -40 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -60 -100 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} -180 30 0 0 {name=p9 lab=in}
C {devices/opin.sym} 330 30 0 0 {name=p10 lab=out_parax}
C {devices/res.sym} 270 30 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 200 90 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 200 140 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} -60 -70 0 0 {name=Vmeas1}
