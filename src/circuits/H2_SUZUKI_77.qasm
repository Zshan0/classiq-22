OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0,-0.11171577,-0.11171577) q[0];
u3(0,-0.11171577,-0.11171577) q[1];
u3(0,0.085706413,0.085706413) q[2];
cx q[0],q[2];
u3(0,0.060312617,0.060312617) q[2];
cx q[0],q[2];
u3(0,0.085706413,0.085706413) q[3];
cx q[1],q[3];
u3(0,0.060312617,0.060312617) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0.082963925,0.082963925) q[2];
cx q[1],q[2];
u3(0,0.082963925,0.082963925) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0.087206438,0.087206438) q[1];
cx q[0],q[1];
u3(pi/2,0,-pi) q[0];
u3(pi/2,0,-pi) q[1];
cx q[2],q[3];
u3(0,0.084344491,0.084344491) q[3];
cx q[2],q[3];
u3(pi/2,0,pi/2) q[2];
u3(pi/2,0,pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.022651308,-0.022651308) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.022651308,-0.022651308) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
u3(pi/2,pi/2,-pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.022651308,0.022651308) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
u3(pi/2,pi/2,-pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.045302615,0.045302615) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
u3(pi/2,pi/2,-pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.022651308,0.022651308) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.022651308,-0.022651308) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
u3(pi/2,pi/2,-pi/2) q[2];
u3(pi/2,pi/2,-pi/2) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.022651308,-0.022651308) q[0];
cx q[1],q[0];
u3(pi/2,0,-pi) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[0],q[1];
u3(0,0.087206438,0.087206438) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,pi/2,-pi) q[2];
u3(pi/2,pi/2,-pi) q[3];
cx q[2],q[3];
u3(0,0.084344491,0.084344491) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0.082963925,0.082963925) q[2];
cx q[1],q[2];
u3(0,0.082963925,0.082963925) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0.060312617,0.060312617) q[2];
cx q[0],q[2];
u3(0,-0.11171577,-0.11171577) q[0];
u3(0,0.085706413,0.085706413) q[2];
u3(0,0.060312617,0.060312617) q[3];
cx q[1],q[3];
u3(0,-0.11171577,-0.11171577) q[1];
u3(0,0.085706413,0.085706413) q[3];