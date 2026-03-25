% 该程序会在命令行输出数字 1, 2, ..., 以判断程序进程。当输出数字 281 后，程序即可完成。

disp('start');
k1 = 1; k2 = 1; m1 = 1; m2 = 1; m3 = 1; r = 0.5; c = 0.001;

input = 0.01;

a1 = pi/3 - asin(r);    a2 = asin(r);   a3 = pi/3 + asin(r);

start = 0.2;    stop = 3;   step = 0.01;

N = round((stop - start)/step + 1);

freq = start:step:stop;

vibrate = zeros(55,1);
vibrate(1:4,1) = [0 input 0 input]';

kinetic_matrix = double(diag([m2 m2 m2 m2 ...
                              2*m2 2*m2 2*m2 2*m2 ...
                              2*m2 2*m2 2*m2 2*m2 ...
                              m2 m2 m2 m2 ...
                              m2 m2 m2 m2 ...
                              m2 m2 m2 m2 ...
                              m2 m2 m2 m2 ...
                              m1 m1 m1 m1 m1 m1 ...
                              1/2*m1*r^2 1/2*m1*r^2 1/2*m1*r^2 ...
                              m3 m3 m3 m3 m3 m3 ...
                              m3 m3 m3 m3 m3 m3 ...
                              m3 m3 m3 m3 m3 m3 ...
                              ]));

syms p1_1 p1_2 p2_1 p2_2 p3_1 p3_2 p4_1 p4_2
syms q1_1 q1_2 q2_1 q2_2 q3_1 q3_2 q4_1 q4_2
syms r1_1 r1_2 r2_1 r2_2 r3_1 r3_2
syms s1_1 s1_2 s2_1 s2_2 s3_1 s3_2
syms t1_1 t1_2 t2_1 t2_2 t3_1 t3_2
syms theta1 theta2 theta3
syms x1_1 x1_2 x2_1 x2_2 x3_1 x3_2
syms y1_1 y1_2 y2_1 y2_2 y3_1 y3_2
syms z1_1 z1_2 z2_1 z2_2 z3_1 z3_2

variable = [
    p1_1 p1_2 q1_1 q1_2 ...
    p2_1 p2_2 q2_1 q2_2 ...
    p3_1 p3_2 q3_1 q3_2 ...
    p4_1 p4_2 q4_1 q4_2 ...
    r1_1 r1_2 s1_1 s1_2 ...
    r2_1 r2_2 s2_1 s2_2 ...
    r3_1 r3_2 s3_1 s3_2 ...
    t1_1 t1_2 t2_1 t2_2 t3_1 t3_2 ...
    theta1 theta2 theta3 ...
    x1_1 x1_2 x2_1 x2_2 x3_1 x3_2 ...
    y1_1 y1_2 y2_1 y2_2 y3_1 y3_2 ...
    z1_1 z1_2 z2_1 z2_2 z3_1 z3_2
    ];

P1_1 = -1/2 + p1_1;
P1_2 = sqrt(3)*(1 - 1) + p1_2;
Q1_1 = 1/2 + q1_1;
Q1_2 = sqrt(3)*(1 - 1) + q1_2;

P2_1 = -1/2 + p2_1;
P2_2 = sqrt(3)*(2 - 1) + p2_2;
Q2_1 = 1/2 + q2_1;
Q2_2 = sqrt(3)*(2 - 1) + q2_2;

P3_1 = -1/2 + p3_1;
P3_2 = sqrt(3)*(3 - 1) + p3_2;
Q3_1 = 1/2 + q3_1;
Q3_2 = sqrt(3)*(3 - 1) + q3_2;

P4_1 = -1/2 + p4_1;
P4_2 = sqrt(3)*(4 - 1) + p4_2;
Q4_1 = 1/2 + q4_1;
Q4_2 = sqrt(3)*(4 - 1) + q4_2;

R1_1 = -1 + r1_1;
R1_2 = sqrt(3)*(1 - 1/2) + r1_2;
S1_1 = 1 + s1_1;
S1_2 = sqrt(3)*(1 - 1/2) + s1_2;

R2_1 = -1 + r2_1;
R2_2 = sqrt(3)*(2 - 1/2) + r2_2;
S2_1 = 1 + s2_1;
S2_2 = sqrt(3)*(2 - 1/2) + s2_2;

R3_1 = -1 + r3_1;
R3_2 = sqrt(3)*(3 - 1/2) + r3_2;
S3_1 = 1 + s3_1;
S3_2 = sqrt(3)*(3 - 1/2) + s3_2;

[d1_1,d1_2,d1_3,d1_4,d1_5,d1_6]...
    = give_variable_1(r,a1,a2,a3,theta1,t1_1,t1_2,x1_1,x1_2,y1_1,y1_2,z1_1,z1_2,...
    P1_1,P1_2,P2_1,P2_2,Q1_1,Q1_2,Q2_1,Q2_2,R1_1,R1_2,S1_1,S1_2, 0);
d1_7 = sqrt((P1_1 - Q1_1)^2 + (P1_2 - Q1_2)^2);
d1_8 = sqrt((P1_1 - R1_1)^2 + (P1_2 - R1_2)^2);
d1_9 = sqrt((Q1_1 - S1_1)^2 + (Q1_2 - S1_2)^2);
d1_10 = sqrt((R1_1 - P2_1)^2 + (R1_2 - P2_2)^2);
d1_11 = sqrt((S1_1 - Q2_1)^2 + (S1_2 - Q2_2)^2);
d1_12 = sqrt((P2_1 - Q2_1)^2 + (P2_2 - Q2_2)^2);

[d2_1,d2_2,d2_3,d2_4,d2_5,d2_6]...
    = give_variable_2(r,a1,a2,a3,theta2,t2_1,t2_2,x2_1,x2_2,y2_1,y2_2,z2_1,z2_2,...
    P2_1,P2_2,P3_1,P3_2,Q2_1,Q2_2,Q3_1,Q3_2,R2_1,R2_2,S2_1,S2_2, 0);
d2_7 = sqrt((P2_1 - Q2_1)^2 + (P2_2 - Q2_2)^2);
d2_8 = sqrt((P2_1 - R2_1)^2 + (P2_2 - R2_2)^2);
d2_9 = sqrt((Q2_1 - S2_1)^2 + (Q2_2 - S2_2)^2);
d2_10 = sqrt((R2_1 - P3_1)^2 + (R2_2 - P3_2)^2);
d2_11 = sqrt((S2_1 - Q3_1)^2 + (S2_2 - Q3_2)^2);
d2_12 = sqrt((P3_1 - Q3_1)^2 + (P3_2 - Q3_2)^2);

[d3_1,d3_2,d3_3,d3_4,d3_5,d3_6]...
    = give_variable_3(r,a1,a2,a3,theta3,t3_1,t3_2,x3_1,x3_2,y3_1,y3_2,z3_1,z3_2,...
    P3_1,P3_2,P4_1,P4_2,Q3_1,Q3_2,Q4_1,Q4_2,R3_1,R3_2,S3_1,S3_2, 0);
d3_7 = sqrt((P3_1 - Q3_1)^2 + (P3_2 - Q3_2)^2);
d3_8 = sqrt((P3_1 - R3_1)^2 + (P3_2 - R3_2)^2);
d3_9 = sqrt((Q3_1 - S3_1)^2 + (Q3_2 - S3_2)^2);
d3_10 = sqrt((R3_1 - P4_1)^2 + (R3_2 - P4_2)^2);
d3_11 = sqrt((S3_1 - Q4_1)^2 + (S3_2 - Q4_2)^2);
d3_12 = sqrt((P4_1 - Q4_1)^2 + (P4_2 - Q4_2)^2);

grad1_1 = double(subs(gradient(d1_1, variable), variable, zeros(1, 55)));
grad1_2 = double(subs(gradient(d1_2, variable), variable, zeros(1, 55)));
grad1_3 = double(subs(gradient(d1_3, variable), variable, zeros(1, 55)));
grad1_4 = double(subs(gradient(d1_4, variable), variable, zeros(1, 55)));
grad1_5 = double(subs(gradient(d1_5, variable), variable, zeros(1, 55)));
grad1_6 = double(subs(gradient(d1_6, variable), variable, zeros(1, 55)));
grad1_7 = double(subs(gradient(d1_7, variable), variable, zeros(1, 55)));
grad1_8 = double(subs(gradient(d1_8, variable), variable, zeros(1, 55)));
grad1_9 = double(subs(gradient(d1_9, variable), variable, zeros(1, 55)));
grad1_10 = double(subs(gradient(d1_10, variable), variable, zeros(1, 55)));
grad1_11 = double(subs(gradient(d1_11, variable), variable, zeros(1, 55)));
grad1_12 = double(subs(gradient(d1_12, variable), variable, zeros(1, 55)));

hess1_1 = double(subs(hessian(d1_1, variable), variable, zeros(1, 55)));
hess1_2 = double(subs(hessian(d1_2, variable), variable, zeros(1, 55)));
hess1_3 = double(subs(hessian(d1_3, variable), variable, zeros(1, 55)));
hess1_4 = double(subs(hessian(d1_4, variable), variable, zeros(1, 55)));
hess1_5 = double(subs(hessian(d1_5, variable), variable, zeros(1, 55)));
hess1_6 = double(subs(hessian(d1_6, variable), variable, zeros(1, 55)));
hess1_7 = double(subs(hessian(d1_7, variable), variable, zeros(1, 55)));
hess1_8 = double(subs(hessian(d1_8, variable), variable, zeros(1, 55)));
hess1_9 = double(subs(hessian(d1_9, variable), variable, zeros(1, 55)));
hess1_10 = double(subs(hessian(d1_10, variable), variable, zeros(1, 55)));
hess1_11 = double(subs(hessian(d1_11, variable), variable, zeros(1, 55)));
hess1_12 = double(subs(hessian(d1_12, variable), variable, zeros(1, 55)));

grad2_1 = double(subs(gradient(d2_1, variable), variable, zeros(1, 55)));
grad2_2 = double(subs(gradient(d2_2, variable), variable, zeros(1, 55)));
grad2_3 = double(subs(gradient(d2_3, variable), variable, zeros(1, 55)));
grad2_4 = double(subs(gradient(d2_4, variable), variable, zeros(1, 55)));
grad2_5 = double(subs(gradient(d2_5, variable), variable, zeros(1, 55)));
grad2_6 = double(subs(gradient(d2_6, variable), variable, zeros(1, 55)));
grad2_7 = double(subs(gradient(d2_7, variable), variable, zeros(1, 55)));
grad2_8 = double(subs(gradient(d2_8, variable), variable, zeros(1, 55)));
grad2_9 = double(subs(gradient(d2_9, variable), variable, zeros(1, 55)));
grad2_10 = double(subs(gradient(d2_10, variable), variable, zeros(1, 55)));
grad2_11 = double(subs(gradient(d2_11, variable), variable, zeros(1, 55)));
grad2_12 = double(subs(gradient(d2_12, variable), variable, zeros(1, 55)));

hess2_1 = double(subs(hessian(d2_1, variable), variable, zeros(1, 55)));
hess2_2 = double(subs(hessian(d2_2, variable), variable, zeros(1, 55)));
hess2_3 = double(subs(hessian(d2_3, variable), variable, zeros(1, 55)));
hess2_4 = double(subs(hessian(d2_4, variable), variable, zeros(1, 55)));
hess2_5 = double(subs(hessian(d2_5, variable), variable, zeros(1, 55)));
hess2_6 = double(subs(hessian(d2_6, variable), variable, zeros(1, 55)));
hess2_7 = double(subs(hessian(d2_7, variable), variable, zeros(1, 55)));
hess2_8 = double(subs(hessian(d2_8, variable), variable, zeros(1, 55)));
hess2_9 = double(subs(hessian(d2_9, variable), variable, zeros(1, 55)));
hess2_10 = double(subs(hessian(d2_10, variable), variable, zeros(1, 55)));
hess2_11 = double(subs(hessian(d2_11, variable), variable, zeros(1, 55)));
hess2_12 = double(subs(hessian(d2_12, variable), variable, zeros(1, 55)));

grad3_1 = double(subs(gradient(d3_1, variable), variable, zeros(1, 55)));
grad3_2 = double(subs(gradient(d3_2, variable), variable, zeros(1, 55)));
grad3_3 = double(subs(gradient(d3_3, variable), variable, zeros(1, 55)));
grad3_4 = double(subs(gradient(d3_4, variable), variable, zeros(1, 55)));
grad3_5 = double(subs(gradient(d3_5, variable), variable, zeros(1, 55)));
grad3_6 = double(subs(gradient(d3_6, variable), variable, zeros(1, 55)));
grad3_7 = double(subs(gradient(d3_7, variable), variable, zeros(1, 55)));
grad3_8 = double(subs(gradient(d3_8, variable), variable, zeros(1, 55)));
grad3_9 = double(subs(gradient(d3_9, variable), variable, zeros(1, 55)));
grad3_10 = double(subs(gradient(d3_10, variable), variable, zeros(1, 55)));
grad3_11 = double(subs(gradient(d3_11, variable), variable, zeros(1, 55)));
grad3_12 = double(subs(gradient(d3_12, variable), variable, zeros(1, 55)));

hess3_1 = double(subs(hessian(d3_1, variable), variable, zeros(1, 55)));
hess3_2 = double(subs(hessian(d3_2, variable), variable, zeros(1, 55)));
hess3_3 = double(subs(hessian(d3_3, variable), variable, zeros(1, 55)));
hess3_4 = double(subs(hessian(d3_4, variable), variable, zeros(1, 55)));
hess3_5 = double(subs(hessian(d3_5, variable), variable, zeros(1, 55)));
hess3_6 = double(subs(hessian(d3_6, variable), variable, zeros(1, 55)));
hess3_7 = double(subs(hessian(d3_7, variable), variable, zeros(1, 55)));
hess3_8 = double(subs(hessian(d3_8, variable), variable, zeros(1, 55)));
hess3_9 = double(subs(hessian(d3_9, variable), variable, zeros(1, 55)));
hess3_10 = double(subs(hessian(d3_10, variable), variable, zeros(1, 55)));
hess3_11 = double(subs(hessian(d3_11, variable), variable, zeros(1, 55)));
hess3_12 = double(subs(hessian(d3_12, variable), variable, zeros(1, 55)));

delta1_7 = dot(grad1_7, variable);
delta1_8 = dot(grad1_8, variable);
delta1_9 = dot(grad1_9, variable);
delta1_10 = dot(grad1_10, variable);
delta1_11 = dot(grad1_11, variable);
delta1_12 = dot(grad1_12, variable);

delta2_7 = dot(grad2_7, variable);
delta2_8 = dot(grad2_8, variable);
delta2_9 = dot(grad2_9, variable);
delta2_10 = dot(grad2_10, variable);
delta2_11 = dot(grad2_11, variable);
delta2_12 = dot(grad2_12, variable);

delta3_7 = dot(grad3_7, variable);
delta3_8 = dot(grad3_8, variable);
delta3_9 = dot(grad3_9, variable);
delta3_10 = dot(grad3_10, variable);
delta3_11 = dot(grad3_11, variable);
delta3_12 = dot(grad3_12, variable);

stress = zeros(1, N);





            
            
            potential_1 = k1*(grad1_1*grad1_1' + grad1_2*grad1_2' + grad1_3*grad1_3' + grad1_4*grad1_4' + grad1_5*grad1_5' + grad1_6*grad1_6') ...
                            + k2*(grad1_7*grad1_7' + grad1_8*grad1_8' + grad1_9*grad1_9' + grad1_10*grad1_10' + grad1_11*grad1_11' + grad1_12*grad1_12');
            potential_2 = k1*(grad2_1*grad2_1' + grad2_2*grad2_2' + grad2_3*grad2_3' + grad2_4*grad2_4' + grad2_5*grad2_5' + grad2_6*grad2_6') ...
                            + k2*(grad2_7*grad2_7' + grad2_8*grad2_8' + grad2_9*grad2_9' + grad2_10*grad2_10' + grad2_11*grad2_11' + grad2_12*grad2_12');
            potential_3 = k1*(grad3_1*grad3_1' + grad3_2*grad3_2' + grad3_3*grad3_3' + grad3_4*grad3_4' + grad3_5*grad3_5' + grad3_6*grad3_6') ...
                            + k2*(grad3_7*grad3_7' + grad3_8*grad3_8' + grad3_9*grad3_9' + grad3_10*grad3_10' + grad3_11*grad3_11' + grad3_12*grad3_12');
            
            
            potential_matrix = potential_1 + potential_2 + potential_3;
            % V_ij

            W_matrix = zeros(55,55,55);
            X_matrix = zeros(55,55,55,55);

            for j1 = 1:55
                for j2 = 1:55
                    for j3 = 1:55
                        W_matrix(j1,j2,j3) = k1*(grad1_1(j1)*hess1_1(j2,j3) + grad1_2(j1)*hess1_2(j2,j3) + grad1_3(j1)*hess1_3(j2,j3) + grad1_4(j1)*hess1_4(j2,j3) + grad1_5(j1)*hess1_5(j2,j3) + grad1_6(j1)*hess1_6(j2,j3)) ...
                            + k2*(grad1_7(j1)*hess1_7(j2,j3) + grad1_8(j1)*hess1_8(j2,j3) + grad1_9(j1)*hess1_9(j2,j3) + grad1_10(j1)*hess1_10(j2,j3) + grad1_11(j1)*hess1_11(j2,j3) + grad1_12(j1)*hess1_12(j2,j3));
            potential_2 = k1*(grad2_1(j1)*hess2_1(j2,j3) + grad2_2(j1)*hess2_2(j2,j3) + grad2_3(j1)*hess2_3(j2,j3) + grad2_4(j1)*hess2_4(j2,j3) + grad2_5(j1)*hess2_5(j2,j3) + grad2_6(j1)*hess2_6(j2,j3)) ...
                            + k2*(grad2_7(j1)*hess2_7(j2,j3) + grad2_8(j1)*hess2_8(j2,j3) + grad2_9(j1)*hess2_9(j2,j3) + grad2_10(j1)*hess2_10(j2,j3) + grad2_11(j1)*hess2_11(j2,j3) + grad2_12(j1)*hess2_12(j2,j3));
            potential_3 = k1*(grad3_1(j1)*hess3_1(j2,j3) + grad3_2(j1)*hess3_2(j2,j3) + grad3_3(j1)*hess3_3(j2,j3) + grad3_4(j1)*hess3_4(j2,j3) + grad3_5(j1)*hess3_5(j2,j3) + grad3_6(j1)*hess3_6(j2,j3)) ...
                            + k2*(grad3_7(j1)*hess3_7(j2,j3) + grad3_8(j1)*hess3_8(j2,j3) + grad3_9(j1)*hess3_9(j2,j3) + grad3_10(j1)*hess3_10(j2,j3) + grad3_11(j1)*hess3_11(j2,j3) + grad3_12(j1)*hess3_12(j2,j3));
                        for j4 = 1:55
                        X_matrix(j1,j2,j3,j4) = k1*(hess1_1(j1,j2)*hess1_1(j3,j4) + hess1_2(j1,j2)*hess1_2(j3,j4) + hess1_3(j1,j2)*hess1_3(j3,j4) + hess1_4(j1,j2)*hess1_4(j3,j4) + hess1_5(j1,j2)*hess1_5(j3,j4) + hess1_6(j1,j2)*hess1_6(j3,j4)) ...
                            + k2*(hess1_7(j1,j2)*hess1_7(j3,j4) + hess1_8(j1,j2)*hess1_8(j3,j4) + hess1_9(j1,j2)*hess1_9(j3,j4) + hess1_10(j1,j2)*hess1_10(j3,j4) + hess1_11(j1,j2)*hess1_11(j3,j4) + hess1_12(j1,j2)*hess1_12(j3,j4));
            potential_2 = k1*(hess2_1(j1,j2)*hess2_1(j3,j4) + hess2_2(j1,j2)*hess2_2(j3,j4) + hess2_3(j1,j2)*hess2_3(j3,j4) + hess2_4(j1,j2)*hess2_4(j3,j4) + hess2_5(j1,j2)*hess2_5(j2,j3) + hess2_6(j1,j2)*hess2_6(j3,j4)) ...
                            + k2*(hess2_7(j1,j2)*hess2_7(j3,j4) + hess2_8(j1,j2)*hess2_8(j3,j4) + hess2_9(j1,j2)*hess2_9(j3,j4) + hess2_10(j1,j2)*hess2_10(j3,j4) + hess2_11(j1,j2)*hess2_11(j3,j4) + hess2_12(j1,j2)*hess2_12(j3,j4));
            potential_3 = k1*(hess3_1(j1,j2)*hess3_1(j3,j4) + hess3_2(j1,j2)*hess3_2(j3,j4) + hess3_3(j1,j2)*hess3_3(j3,j4) + hess3_4(j1,j2)*hess3_4(j3,j4) + hess3_5(j1,j2)*hess3_5(j2,j3) + hess3_6(j1,j2)*hess3_6(j3,j4)) ...
                            + k2*(hess3_7(j1,j2)*hess3_7(j3,j4) + hess3_8(j1,j2)*hess3_8(j3,j4) + hess3_9(j1,j2)*hess3_9(j3,j4) + hess3_10(j1,j2)*hess3_10(j3,j4) + hess3_11(j1,j2)*hess3_11(j3,j4) + hess3_12(j1,j2)*hess3_12(j3,j4));
                        end
                    end
                end
            end

            tilde_W_matrix = zeros(55,55,55);
            tilde_X_matrix = zeros(55,55,55,55);

            for j1 = 1:55
                for j2 = 1:55
                    for j3 = 1:55
                        tilde_W_matrix(j1,j2,j3) = W_matrix(j1,j2,j3) + W_matrix(j2,j1,j3) + W_matrix(j2,j3,j1);
                        for j4 = 1:55
                            tilde_X_matrix(j1,j2,j3,j4) = X_matrix(j1,j2,j3,j4) + X_matrix(j2,j1,j3,j4) + X_matrix(j2,j3,j1,j4) + X_matrix(j2,j3,j4,j1);
                        end
                    end
                end
            end

            
            

            amplitude = zeros(N,3);

            for j = 1:N
                disp(j);
                omega = start + (j - 1)*step;
                A = potential_matrix - omega^2 * kinetic_matrix + 1i * omega * c * eye(55);
                F = A(5:55, 1:4);
                G = A(5:55, 5:55);
                T = -inv(G)*F;
                vibrate(5:55,1) = T*vibrate(1:4,1);
                vector_W = zeros(55,1);
                vector_X = zeros(55,1);
                stress(1,j) = abs(dot(grad3_6, vibrate));
                
                for j1 = 1:55
                    for j2 = 1:55
                        for j3 = 1:55
                            vector_W(j1) = vector_W(j1) + 1/2*tilde_W_matrix(j1,j2,j3)*vibrate(j2)*vibrate(j3);
                            for j4 = 1:55
                            vector_X(j1) = vector_X(j1) + 1/8*tilde_X_matrix(j1,j2,j3,j4)*vibrate(j2)*vibrate(j3)*vibrate(j4);
                            end
                        end
                    end
                end
            Theta_2_omega = (-4*omega^2*kinetic_matrix + 2*1i*omega*c*eye(55) + potential_matrix)\vector_W;
            Theta_3_omega = (-9*omega^2*kinetic_matrix + 3*1i*omega*c*eye(55) + potential_matrix)\vector_X;
            amplitude(j,1) = norm(vibrate,1);
            amplitude(j,2) = norm(Theta_2_omega,1);
            amplitude(j,3) = norm(Theta_3_omega,1);
            end



plot(freq, log10(amplitude(:,1)), freq, log10(amplitude(:,2)), freq, log10(amplitude(:,3)));
legend('Lambda', 'Theta_2_omega', 'Theta_3_omega');
title('输入值',num2str(input));