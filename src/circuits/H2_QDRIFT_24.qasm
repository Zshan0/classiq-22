OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0,0,0.24802169) q[0];
u3(0,0,0.24802169) q[0];
u3(0,0,0.24802169) q[1];
cx q[0],q[2];
u3(0,0,0.24802169) q[2];
cx q[0],q[2];
cx q[0],q[2];
u3(0,0,0.24802169) q[2];
cx q[0],q[2];
u3(0,0,0.24802169) q[2];
cx q[1],q[2];
u3(0,0,0.24802169) q[2];
cx q[1],q[2];
u3(0,0,0.24802169) q[3];
cx q[0],q[3];
u3(0,0,0.24802169) q[3];
cx q[0],q[3];
cx q[1],q[3];
u3(0,0,0.24802169) q[3];
cx q[1],q[3];
cx q[0],q[1];
u3(0,0,0.24802169) q[1];
cx q[0],q[1];
cx q[0],q[2];
u3(0,0,0.24802169) q[1];
u3(0,0,0.24802169) q[1];
u3(0,0,0.24802169) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(0,0,0.24802169) q[2];
cx q[1],q[2];
u3(0,0,0.24802169) q[3];
