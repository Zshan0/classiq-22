OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0,0,-0.092610308) q[0];
u3(0,0,-0.092610308) q[1];
u3(0,0,0.071049035) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,0.071049035) q[3];
cx q[1],q[3];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[1];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.037555032) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,-0.092610308) q[0];
u3(0,0,-0.092610308) q[0];
u3(0,0,0.071049035) q[2];
u3(0,0,0.071049035) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
u3(0,0,-0.092610308) q[1];
u3(0,0,-0.092610308) q[1];
u3(0,0,0.071049035) q[3];
u3(0,0,0.071049035) q[3];
cx q[1],q[3];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[1];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.037555032) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,-0.092610308) q[0];
u3(0,0,0.1470097) q[0];
u3(0,0,0.071049035) q[2];
u3(0,0,-0.11278331) q[2];
cx q[0],q[2];
u3(0,0,-0.079366952) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
u3(0,0,-0.092610308) q[1];
u3(0,0,0.1470097) q[1];
u3(0,0,0.071049035) q[3];
u3(0,0,-0.11278331) q[3];
cx q[1],q[3];
u3(0,0,-0.079366952) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,-0.1091744) q[2];
cx q[1],q[2];
u3(0,0,-0.1091744) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0,-0.11475723) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[1];
cx q[2],q[3];
u3(0,0,-0.11099112) q[3];
cx q[2],q[3];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.059614897) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.029807449) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
cx q[0],q[1];
u3(0,0,-0.11475723) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
cx q[2],q[3];
u3(0,0,-0.11099112) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,-0.1091744) q[2];
cx q[1],q[2];
u3(0,0,-0.1091744) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0,-0.079366952) q[2];
cx q[0],q[2];
u3(0,0,0.1470097) q[0];
u3(0,0,-0.092610308) q[0];
u3(0,0,-0.11278331) q[2];
u3(0,0,0.071049035) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,-0.079366952) q[3];
cx q[1],q[3];
u3(0,0,0.1470097) q[1];
u3(0,0,-0.092610308) q[1];
u3(0,0,-0.11278331) q[3];
u3(0,0,0.071049035) q[3];
cx q[1],q[3];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[1];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.037555032) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,-0.092610308) q[0];
u3(0,0,-0.092610308) q[0];
u3(0,0,0.071049035) q[2];
u3(0,0,0.071049035) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
u3(0,0,-0.092610308) q[1];
u3(0,0,-0.092610308) q[1];
u3(0,0,0.071049035) q[3];
u3(0,0,0.071049035) q[3];
cx q[1],q[3];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[1];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.037555032) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(0,0,-pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,-pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
u3(0,0,pi/2) q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
u3(0,0,pi/2) q[1];
u3(pi/2,0,pi) q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,-pi/2) q[2];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,-pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0,-0.018777516) q[0];
cx q[1],q[0];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[1];
cx q[0],q[1];
u3(0,0,0.072292527) q[1];
cx q[0],q[1];
cx q[3],q[2];
u3(pi/2,0,pi) q[2];
u3(0,0,pi/2) q[2];
u3(pi/2,0,pi) q[3];
u3(0,0,pi/2) q[3];
cx q[2],q[3];
u3(0,0,0.069920026) q[3];
cx q[2],q[3];
cx q[0],q[3];
cx q[1],q[2];
u3(0,0,0.068775563) q[2];
cx q[1],q[2];
u3(0,0,0.068775563) q[3];
cx q[0],q[3];
cx q[0],q[2];
cx q[1],q[3];
u3(0,0,0.049998047) q[2];
cx q[0],q[2];
u3(0,0,-0.092610308) q[0];
u3(0,0,0.071049035) q[2];
u3(0,0,0.049998047) q[3];
cx q[1],q[3];
u3(0,0,-0.092610308) q[1];
u3(0,0,0.071049035) q[3];
