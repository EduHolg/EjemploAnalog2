v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 490 -610 1290 -210 {flags=graph
y1=0
y2=2
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
out"
color="4 6"
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
color=6
node=i(vmeas)}
N 110 -550 130 -550 {
lab=vss}
N 130 -490 130 -480 {
lab=GND}
N 210 -550 230 -550 {
lab=vdd}
N 230 -490 230 -480 {
lab=GND}
N -20 -400 -20 -380 {
lab=#net1}
N 60 -400 60 -380 {
lab=vss}
N -140 -330 -130 -330 {
lab=in}
N 170 -330 280 -330 {
lab=#net2}
N 240 -330 240 -300 {
lab=#net2}
N 240 -240 240 -220 {
lab=GND}
N 340 -330 370 -330 {
lab=out}
C {devices/code.sym} -380 -380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 280 -90 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {inverter.sym} 20 -330 0 0 {name=x1}
C {devices/vsource.sym} 130 -520 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 110 -550 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 130 -480 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 230 -520 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 210 -550 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 230 -480 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 60 -400 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -20 -460 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} -140 -330 0 0 {name=p6 lab=in}
C {devices/opin.sym} 370 -330 0 0 {name=p7 lab=out}
C {devices/res.sym} 310 -330 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 240 -270 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 -220 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} -340 -170 0 0 {name=COMMANDS
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
C {devices/ammeter.sym} -20 -430 0 0 {name=Vmeas}
