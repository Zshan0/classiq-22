OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
u3(pi/2,0,pi/2) q[0];
u3(pi/2,0,pi/2) q[1];
u3(pi/2,0,pi/2) q[4];
u3(pi/2,0,pi/2) q[5];
u3(pi/2,0,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,0.0062646568,0.0062646568) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[5],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,0.0062646568,0.0062646568) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[5],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,0,-pi) q[6];
u3(pi/2,0,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[5],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,pi/2,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[5],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
u3(pi/2,pi/2,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[5],q[1];
u3(pi/2,0,-pi) q[1];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[5],q[1];
u3(pi/2,0,-pi) q[1];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0083733614,-0.0083733614) q[0];
cx q[1],q[0];
u3(pi/2,0,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[0],q[1];
u3(0,-0.0049175698,-0.0049175698) q[1];
cx q[0],q[1];
u3(pi/2,-pi/2,-pi) q[0];
u3(pi/2,-pi/2,-pi) q[1];
cx q[0],q[1];
u3(0,-0.0049175698,-0.0049175698) q[1];
cx q[0],q[1];
u3(pi/2,pi/2,-pi/2) q[0];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,0,-pi) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[6],q[5];
cx q[5],q[4];
u3(0,0.010540187,0.010540187) q[4];
cx q[5],q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[4];
u3(0,0.010540187,0.010540187) q[4];
cx q[5],q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[6],q[5];
cx q[5],q[3];
u3(0,-0.0011822832,-0.0011822832) q[3];
cx q[5],q[3];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[3];
u3(0,-0.0011822832,-0.0011822832) q[3];
cx q[5],q[3];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[6],q[5];
cx q[5],q[2];
u3(0,-0.0011822832,-0.0011822832) q[2];
cx q[5],q[2];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[2];
u3(0,-0.0011822832,-0.0011822832) q[2];
cx q[5],q[2];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,0,-pi) q[9];
cx q[9],q[1];
cx q[1],q[0];
u3(0,0.010540187,0.010540187) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,0.010540187,0.010540187) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[9],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[8],q[1];
cx q[1],q[0];
u3(0,-0.0011822832,-0.0011822832) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,-0.0011822832,-0.0011822832) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[8],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[7],q[1];
cx q[1],q[0];
u3(0,-0.0011822832,-0.0011822832) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,-0.0011822832,-0.0011822832) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[7],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[6],q[1];
cx q[1],q[0];
u3(0,-0.0015406701,-0.0015406701) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[6],q[1];
u3(pi/2,pi/2,-pi) q[1];
u3(pi/2,0,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[1];
u3(0,-0.0015406701,-0.0015406701) q[1];
cx q[5],q[1];
u3(pi/2,0,-pi) q[1];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,pi/2,-pi) q[6];
cx q[6],q[1];
cx q[1],q[0];
u3(0,-0.0015406701,-0.0015406701) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[6],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-pi) q[6];
cx q[6],q[5];
cx q[5],q[1];
u3(0,-0.0015406701,-0.0015406701) q[1];
cx q[5],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[6],q[5];
u3(pi/2,0,-pi) q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,0.011733624,0.011733624) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi) q[0];
cx q[5],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
u3(pi/2,0,pi/2) q[5];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[6],q[5];
cx q[5],q[0];
u3(0,0.011733624,0.011733624) q[0];
cx q[5],q[0];
u3(pi/2,0,-pi) q[0];
cx q[6],q[5];
u3(pi/2,pi/2,-pi) q[5];
cx q[5],q[1];
cx q[1],q[0];
u3(0,0.011733624,0.011733624) q[0];
cx q[1],q[0];
u3(pi/2,0,-pi) q[0];
cx q[5],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[4],q[1];
u3(pi/2,0,-pi) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
cx q[5],q[0];
u3(0,0.011733624,0.011733624) q[0];
cx q[5],q[0];
u3(pi/2,0,pi/2) q[0];
cx q[1],q[0];
u3(0,0.0027757462,0.0027757462) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,0.0027757462,0.0027757462) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[4],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[1];
cx q[1],q[0];
u3(0,0.0036202488,0.0036202488) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,0.0036202488,0.0036202488) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[3],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0036202488,0.0036202488) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[1],q[0];
u3(0,0.0036202488,0.0036202488) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi/2) q[2];
u3(pi/2,0,pi/2) q[3];
u3(pi/2,0,pi/2) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[9],q[6];
cx q[6],q[5];
u3(0,0.0027757462,0.0027757462) q[5];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
u3(0,0.0027757462,0.0027757462) q[5];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[9],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[6];
cx q[6],q[5];
u3(0,0.0036202488,0.0036202488) q[5];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
u3(0,0.0036202488,0.0036202488) q[5];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[8],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[7],q[6];
cx q[6],q[5];
u3(0,0.0036202488,0.0036202488) q[5];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[6],q[5];
u3(0,0.0036202488,0.0036202488) q[5];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(pi/2,0,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
cx q[5],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
cx q[5],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
cx q[5],q[2];
u3(pi/2,0,-pi) q[2];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[7];
u3(pi/2,0,-pi) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0074967608,0.0074967608) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
u3(pi/2,0,pi/2) q[2];
cx q[5],q[3];
u3(pi/2,pi/2,-pi/2) q[3];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[8],q[7];
u3(pi/2,0,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[6],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
u3(0,1.406583,-1.406583) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[5],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[6],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(pi/2,pi/2,-pi/2) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[5],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
u3(0,1.406583,-1.406583) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[6],q[2];
u3(pi/2,pi/2,-pi/2) q[2];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[5],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(0,1.406583,-1.406583) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[6],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(0,1.406583,-1.406583) q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[5],q[2];
u3(pi/2,0,-pi) q[2];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
u3(pi/2,0,-pi) q[7];
u3(pi/2,pi/2,-pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.006802532,0.006802532) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
u3(0,1.406583,-1.406583) q[8];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(pi/2,pi/2,-pi/2) q[3];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
u3(0,1.406583,-1.406583) q[8];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.004802532,0.004802532) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.004802532,0.004802532) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[5],q[3];
u3(pi/2,0,-pi) q[3];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(0,1.406583,-1.406583) q[8];
u3(0,1.406583,-1.406583) q[8];
cx q[8],q[7];
u3(pi/2,0,-pi) q[8];
u3(pi/2,0,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.030738327,0.030738327) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.030738327,0.030738327) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.030738327,0.030738327) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.030738327,0.030738327) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0077644412,-0.0077644412) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0077644412,-0.0077644412) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0077644412,-0.0077644412) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[8],q[7];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.0077644412,-0.0077644412) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
cx q[8],q[7];
u3(0,1.406583,-1.406583) q[9];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0077644412,-0.0077644412) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[6],q[5];
u3(0,1.406583,-1.406583) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0077644412,-0.0077644412) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.00594902,-0.00594902) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.00594902,-0.00594902) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
u3(0,1.406583,-1.406583) q[9];
cx q[9],q[8];
u3(pi/2,0,-pi) q[9];
cx q[9],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.03511677,-0.03511677) q[0];
cx q[1],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[9],q[4];
u3(pi/2,pi/2,-pi) q[4];
u3(pi/2,0,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
u3(0,-0.03511677,-0.03511677) q[4];
cx q[5],q[4];
u3(pi/2,0,-pi) q[4];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi) q[9];
cx q[9],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.03511677,-0.03511677) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi/2) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[9],q[4];
u3(pi/2,0,-pi) q[4];
u3(pi/2,0,-pi) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[4];
u3(0,-0.03511677,-0.03511677) q[4];
cx q[5],q[4];
u3(pi/2,0,pi/2) q[4];
cx q[6],q[5];
u3(pi/2,0,-pi) q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.033058729,-0.033058729) q[0];
cx q[1],q[0];
u3(pi/2,pi/2,-pi) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
u3(pi/2,0,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[0];
u3(0,-0.033058729,-0.033058729) q[0];
cx q[5],q[0];
u3(pi/2,0,-pi) q[0];
cx q[6],q[5];
u3(pi/2,pi/2,-pi) q[5];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,-0.033058729,-0.033058729) q[0];
cx q[1],q[0];
u3(pi/2,0,-pi) q[0];
cx q[2],q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[4],q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[0];
u3(0,-0.033058729,-0.033058729) q[0];
cx q[5],q[0];
u3(pi/2,0,pi/2) q[0];
cx q[1],q[0];
u3(0,-0.0038498576,-0.0038498576) q[0];
cx q[1],q[0];
u3(0,1.406583,-1.406583) q[0];
cx q[2],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[4],q[2];
u3(0,1.406583,-1.406583) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[0];
u3(0,0.0044790746,0.0044790746) q[0];
cx q[2],q[0];
u3(pi/2,-pi/2,pi/2) q[0];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[0];
u3(0,0.0044790746,0.0044790746) q[0];
cx q[2],q[0];
u3(pi/2,0,-pi) q[0];
cx q[3],q[2];
u3(pi/2,0,pi/2) q[2];
cx q[4],q[3];
u3(pi/2,0,pi/2) q[3];
u3(0,1.406583,-1.406583) q[4];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[7];
cx q[7],q[6];
cx q[6],q[5];
u3(0,-0.0038498576,-0.0038498576) q[5];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[9],q[7];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[6];
cx q[6],q[5];
u3(0,-0.0038498576,-0.0038498576) q[5];
cx q[6],q[5];
u3(pi/2,pi/2,-pi/2) q[5];
cx q[8],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[5];
u3(0,0.0044790746,0.0044790746) q[5];
cx q[7],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[5];
u3(0,0.0044790746,0.0044790746) q[5];
cx q[7],q[5];
u3(pi/2,0,-pi) q[5];
cx q[8],q[7];
u3(pi/2,0,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[6],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[6],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
u3(pi/2,pi/2,-pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[6],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[7],q[6];
cx q[6],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[6],q[2];
u3(pi/2,0,-pi) q[2];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
u3(pi/2,0,-pi) q[7];
cx q[9],q[8];
u3(pi/2,0,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
cx q[6],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010328819,0.010328819) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
u3(pi/2,0,-pi) q[2];
cx q[6],q[3];
u3(pi/2,0,-pi) q[3];
cx q[7],q[6];
u3(0,1.406583,-1.406583) q[6];
cx q[8],q[7];
u3(pi/2,0,-pi) q[7];
u3(pi/2,0,-pi) q[8];
u3(0,1.406583,-1.406583) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[2];
cx q[2],q[1];
u3(0,-0.0055663918,-0.0055663918) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[7],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[8],q[7];
u3(0,1.406583,-1.406583) q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(0,-0.0055663918,-0.0055663918) q[2];
cx q[3],q[2];
u3(pi/2,0,-pi) q[2];
cx q[4],q[3];
u3(pi/2,0,pi/2) q[3];
cx q[6],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
u3(pi/2,0,-pi) q[7];
cx q[9],q[8];
u3(pi/2,0,pi/2) q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0055663918,-0.0055663918) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
cx q[8],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[9],q[8];
u3(0,1.406583,-1.406583) q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
u3(0,-0.0055663918,-0.0055663918) q[3];
cx q[4],q[3];
u3(pi/2,pi/2,-pi) q[3];
cx q[6],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[7],q[6];
u3(0,1.406583,-1.406583) q[6];
cx q[8],q[7];
u3(pi/2,pi/2,-pi) q[8];
u3(0,1.406583,-1.406583) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.0065757449,0.0065757449) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.0065757449,0.0065757449) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.0065757449,0.0065757449) q[1];
cx q[2],q[1];
u3(0,1.406583,-1.406583) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.0065757449,0.0065757449) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.023557442,0.023557442) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.023557442,0.023557442) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,0,-pi) q[9];
cx q[9],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010889408,0.010889408) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[9],q[4];
u3(pi/2,pi/2,-pi) q[4];
u3(pi/2,0,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
u3(0,0.010889408,0.010889408) q[4];
cx q[6],q[4];
u3(pi/2,0,-pi) q[4];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi) q[9];
cx q[9],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.010889408,0.010889408) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[9],q[4];
u3(pi/2,0,-pi) q[4];
u3(pi/2,0,-pi) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[4];
u3(0,0.010889408,0.010889408) q[4];
cx q[6],q[4];
u3(pi/2,0,pi/2) q[4];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0090120428,-0.0090120428) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
u3(pi/2,0,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[1];
u3(0,-0.0090120428,-0.0090120428) q[1];
cx q[6],q[1];
u3(pi/2,0,-pi) q[1];
cx q[7],q[6];
u3(pi/2,pi/2,-pi) q[6];
cx q[6],q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,-0.0090120428,-0.0090120428) q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[6],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[5],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[1];
u3(0,-0.0090120428,-0.0090120428) q[1];
cx q[6],q[1];
u3(pi/2,0,pi/2) q[1];
cx q[2],q[1];
u3(0,0.012733914,0.012733914) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
u3(0,0.012733914,0.012733914) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
cx q[5],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[4],q[2];
cx q[2],q[1];
u3(0,-0.0038182812,-0.0038182812) q[1];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[4],q[2];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[2];
cx q[2],q[1];
u3(0,-0.0038182812,-0.0038182812) q[1];
cx q[2],q[1];
u3(pi/2,pi/2,-pi/2) q[1];
cx q[4],q[2];
u3(pi/2,0,pi/2) q[2];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[4],q[3];
cx q[3],q[1];
u3(0,-0.0038182812,-0.0038182812) q[1];
cx q[3],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[1];
u3(0,-0.0038182812,-0.0038182812) q[1];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[4],q[3];
u3(pi/2,0,pi/2) q[3];
u3(pi/2,pi/2,-pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[0];
u3(0,0.012733914,0.012733914) q[0];
cx q[6],q[0];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[0];
u3(0,0.012733914,0.012733914) q[0];
cx q[6],q[0];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[7];
cx q[7],q[6];
u3(0,-0.0038182812,-0.0038182812) q[6];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[9],q[7];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[7];
cx q[7],q[6];
u3(0,-0.0038182812,-0.0038182812) q[6];
cx q[7],q[6];
u3(pi/2,pi/2,-pi/2) q[6];
cx q[9],q[7];
u3(pi/2,0,pi/2) q[7];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[6];
u3(0,-0.0038182812,-0.0038182812) q[6];
cx q[8],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[6];
u3(0,-0.0038182812,-0.0038182812) q[6];
cx q[8],q[6];
u3(pi/2,0,-pi/2) q[6];
cx q[5],q[6];
u3(0,-0.0049175698,-0.0049175698) q[6];
cx q[5],q[6];
u3(pi/2,-pi/2,-pi) q[5];
u3(pi/2,-pi/2,-pi) q[6];
cx q[5],q[6];
u3(0,-0.0049175698,-0.0049175698) q[6];
cx q[5],q[6];
u3(pi/2,pi/2,-pi/2) q[5];
u3(pi/2,0,-pi) q[6];
cx q[9],q[8];
u3(pi/2,0,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[3];
cx q[3],q[2];
u3(0,0.0042172849,0.0042172849) q[2];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[3];
cx q[3],q[2];
u3(0,0.0042172849,0.0042172849) q[2];
cx q[3],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[7],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[7];
u3(pi/2,pi/2,-pi/2) q[8];
cx q[8],q[7];
cx q[7],q[3];
cx q[3],q[2];
u3(0,0.0042172849,0.0042172849) q[2];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[7],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[8];
cx q[8],q[7];
cx q[7],q[3];
cx q[3],q[2];
u3(0,0.0042172849,0.0042172849) q[2];
cx q[3],q[2];
u3(pi/2,pi/2,-pi/2) q[2];
cx q[7],q[3];
u3(pi/2,0,-pi) q[3];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[7];
u3(pi/2,0,-pi) q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(0,0.0048683025,0.0048683025) q[2];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[4],q[3];
cx q[7],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(0,0.0048683025,0.0048683025) q[2];
cx q[3],q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[4],q[3];
cx q[7],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[8],q[7];
u3(pi/2,pi/2,-pi/2) q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(0,0.0048683025,0.0048683025) q[2];
cx q[3],q[2];
u3(0,1.406583,-1.406583) q[2];
cx q[4],q[3];
cx q[7],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[8],q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[4];
cx q[4],q[3];
cx q[3],q[2];
u3(0,0.0048683025,0.0048683025) q[2];
cx q[3],q[2];
u3(pi/2,0,-pi) q[2];
cx q[4],q[3];
u3(pi/2,0,pi/2) q[3];
cx q[7],q[4];
u3(pi/2,pi/2,-pi/2) q[4];
cx q[8],q[7];
u3(pi/2,0,-pi) q[7];
cx q[9],q[8];
u3(pi/2,0,pi/2) q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[4];
cx q[4],q[3];
u3(0,0.0048683025,0.0048683025) q[3];
cx q[4],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[8],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[4];
cx q[4],q[3];
u3(0,0.0048683025,0.0048683025) q[3];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[8],q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[4];
cx q[4],q[3];
u3(0,0.0048683025,0.0048683025) q[3];
cx q[4],q[3];
u3(0,1.406583,-1.406583) q[3];
cx q[8],q[4];
u3(0,1.406583,-1.406583) q[4];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[4];
cx q[4],q[3];
u3(0,0.0048683025,0.0048683025) q[3];
cx q[4],q[3];
u3(pi/2,0,-pi) q[3];
cx q[8],q[4];
u3(pi/2,0,-pi) q[4];
cx q[3],q[4];
u3(0,0.062455125,0.062455125) q[4];
cx q[3],q[4];
cx q[2],q[4];
u3(0,0.062455125,0.062455125) q[4];
cx q[2],q[4];
cx q[1],q[4];
cx q[2],q[3];
u3(0,0.065584523,0.065584523) q[3];
cx q[2],q[3];
u3(0,0.053929861,0.053929861) q[4];
cx q[1],q[4];
cx q[1],q[3];
u3(0,0.060225501,0.060225501) q[3];
cx q[1],q[3];
cx q[1],q[2];
u3(0,0.060225501,0.060225501) q[2];
cx q[1],q[2];
u3(pi/2,0,pi/2) q[1];
u3(pi/2,0,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0064605526,0.0064605526) q[0];
cx q[1],q[0];
cx q[2],q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[4],q[3];
cx q[3],q[2];
cx q[2],q[1];
cx q[1],q[0];
u3(0,0.0061605526,0.0061605526) q[0];
cx q[1],q[0];
u3(0,-0.30101532,-0.30101532) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[2];
cx q[4],q[3];
u3(pi/2,0,-pi) q[4];
cx q[0],q[4];
u3(0,0.08360122,0.08360122) q[4];
cx q[0],q[4];
cx q[0],q[3];
u3(0,0.062788763,0.062788763) q[3];
cx q[0],q[3];
cx q[0],q[2];
u3(0,0.062788763,0.062788763) q[2];
cx q[0],q[2];
cx q[0],q[1];
u3(0,0.053621411,0.053621411) q[1];
cx q[0],q[1];
u3(0,-0.5772921,-0.5772921) q[4];
cx q[9],q[8];
u3(pi/2,0,-pi) q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
u3(0,-0.00594902,-0.00594902) q[5];
cx q[6],q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[7],q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
u3(0,-0.00594902,-0.00594902) q[5];
cx q[6],q[5];
u3(pi/2,0,-pi) q[5];
cx q[7],q[6];
u3(pi/2,0,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,pi/2,-pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
u3(0,0.023557442,0.023557442) q[6];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
u3(0,0.023557442,0.023557442) q[6];
cx q[7],q[6];
u3(pi/2,-0.77983553,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(0,-0.42448175,-0.42448175) q[8];
u3(pi/2,-1.1545842,-pi) q[9];
cx q[8],q[9];
u3(0,0.062455125,0.062455125) q[9];
cx q[8],q[9];
cx q[7],q[9];
u3(0,0.062455125,0.062455125) q[9];
cx q[7],q[9];
cx q[6],q[9];
u3(0,-0.42448175,-0.42448175) q[7];
cx q[7],q[8];
u3(0,0.065584523,0.065584523) q[8];
cx q[7],q[8];
u3(0,0.053929861,0.053929861) q[9];
cx q[6],q[9];
cx q[6],q[8];
u3(0,0.060225501,0.060225501) q[8];
cx q[6],q[8];
cx q[6],q[7];
u3(0,0.060225501,0.060225501) q[7];
cx q[6],q[7];
u3(pi/2,0,pi/2) q[6];
u3(pi/2,0,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
u3(0,0.0061605526,0.0061605526) q[5];
cx q[6],q[5];
cx q[7],q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,-pi/2,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[7];
cx q[7],q[6];
cx q[6],q[5];
u3(0,0.0061605526,0.0061605526) q[5];
cx q[6],q[5];
u3(0,-0.30101532,-0.30101532) q[5];
cx q[7],q[6];
u3(pi/2,0,-pi) q[6];
cx q[8],q[7];
cx q[9],q[8];
u3(pi/2,0,-pi) q[9];
cx q[5],q[9];
u3(0,0.08360122,0.08360122) q[9];
cx q[5],q[9];
cx q[4],q[9];
cx q[5],q[8];
u3(0,0.062788763,0.062788763) q[8];
cx q[5],q[8];
cx q[5],q[7];
u3(0,0.062788763,0.062788763) q[7];
cx q[5],q[7];
cx q[5],q[6];
u3(0,0.053621411,0.053621411) q[6];
cx q[5],q[6];
u3(0,0.11409164,0.11409164) q[9];
cx q[4],q[9];
cx q[3],q[9];
cx q[4],q[8];
u3(0,0.067323428,0.067323428) q[8];
cx q[4],q[8];
cx q[4],q[7];
u3(0,0.067323428,0.067323428) q[7];
cx q[4],q[7];
cx q[4],q[6];
u3(0,0.060505606,0.060505606) q[6];
cx q[4],q[6];
cx q[4],q[5];
u3(0,0.11433955,0.11433955) q[5];
cx q[4],q[5];
u3(0,0.067323428,0.067323428) q[9];
cx q[3],q[9];
cx q[2],q[9];
u3(0,-0.42448175,-0.42448175) q[3];
cx q[3],q[8];
u3(0,0.078236378,0.078236378) q[8];
cx q[3],q[8];
u3(0,0.067323428,0.067323428) q[9];
cx q[2],q[9];
cx q[1],q[9];
u3(0,-0.42448175,-0.42448175) q[2];
cx q[2],q[7];
u3(0,0.078236378,0.078236378) q[7];
cx q[2],q[7];
cx q[2],q[8];
cx q[3],q[7];
u3(0,0.069801808,0.069801808) q[7];
cx q[3],q[7];
cx q[3],q[6];
u3(0,0.070554321,0.070554321) q[6];
cx q[3],q[6];
cx q[3],q[5];
u3(0,0.068785524,0.068785524) q[5];
cx q[3],q[5];
u3(0,0.069801808,0.069801808) q[8];
cx q[2],q[8];
cx q[2],q[6];
u3(0,0.070554321,0.070554321) q[6];
cx q[2],q[6];
cx q[2],q[5];
u3(0,0.068785524,0.068785524) q[5];
cx q[2],q[5];
u3(0,0.060505606,0.060505606) q[9];
cx q[1],q[9];
cx q[0],q[9];
cx q[1],q[8];
u3(0,0.070554321,0.070554321) q[8];
cx q[1],q[8];
cx q[1],q[7];
u3(0,0.070554321,0.070554321) q[7];
cx q[1],q[7];
u3(0,-0.38991776,-0.38991776) q[1];
cx q[1],q[6];
u3(0,0.084703918,0.084703918) q[6];
cx q[1],q[6];
cx q[1],q[5];
u3(0,0.056656068,0.056656068) q[5];
cx q[1],q[5];
u3(0,0.11433955,0.11433955) q[9];
cx q[0],q[9];
cx q[0],q[8];
u3(0,0.068785524,0.068785524) q[8];
cx q[0],q[8];
cx q[0],q[7];
u3(0,0.068785524,0.068785524) q[7];
cx q[0],q[7];
cx q[0],q[6];
u3(0,0.056656068,0.056656068) q[6];
cx q[0],q[6];
cx q[0],q[5];
u3(0,0.12357087,0.12357087) q[5];
cx q[0],q[5];
