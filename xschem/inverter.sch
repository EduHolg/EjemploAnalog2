v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -70 20 -70 {
lab=IN}
N 10 -70 10 50 {
lab=IN}
N 10 50 20 50 {
lab=IN}
N -40 -20 10 -20 {
lab=IN}
N 60 -40 60 20 {
lab=#net1}
N 60 -120 60 -100 {
lab=VDD}
N 60 80 60 100 {
lab=VSS}
N 60 50 150 50 {
lab=VSS}
N 150 50 150 100 {
lab=VSS}
N 60 100 150 100 {
lab=VSS}
N 60 -120 150 -120 {
lab=VDD}
N 150 -120 150 -70 {
lab=VDD}
N 60 -70 150 -70 {
lab=VDD}
N 230 -70 240 -70 {
lab=#net1}
N 230 -70 230 50 {
lab=#net1}
N 230 50 240 50 {
lab=#net1}
N 280 -40 280 20 {
lab=OUT}
N 280 -120 280 -100 {
lab=VDD}
N 280 80 280 100 {
lab=VSS}
N 280 50 370 50 {
lab=VSS}
N 370 50 370 100 {
lab=VSS}
N 280 100 370 100 {
lab=VSS}
N 280 -120 370 -120 {
lab=VDD}
N 370 -120 370 -70 {
lab=VDD}
N 280 -70 370 -70 {
lab=VDD}
N 60 -20 230 -20 {
lab=#net1}
N 280 -20 390 -20 {
lab=OUT}
C {devices/iopin.sym} -120 -120 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -120 -90 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 40 50 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -40 -20 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 390 -20 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 60 -120 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 40 -70 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 260 50 0 0 {name=M3
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 280 -120 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 100 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 260 -70 0 0 {name=M4
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
