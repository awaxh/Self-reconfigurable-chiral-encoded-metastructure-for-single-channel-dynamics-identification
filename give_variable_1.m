function [d1_1,d1_2,d1_3,d1_4,d1_5,d1_6]...
    = give_variable_1(r,a1,a2,a3,theta1,t1_1,t1_2,x1_1,x1_2,y1_1,y1_2,z1_1,z1_2,...
    P1_1,P1_2,P2_1,P2_2,Q1_1,Q1_2,Q2_1,Q2_2,R1_1,R1_2,S1_1,S1_2, bool_1)
    
    if bool_1==0 

        U1_1 = r*sin(a1 + theta1) + t1_1;
        U1_2 = sqrt(3)*(1 - 1/2) - r*cos(a1 + theta1) + t1_2;
        V1_1 = r*sin(a2 - theta1) + t1_1;
        V1_2 = sqrt(3)*(1 - 1/2) + r*cos(a2 + theta1) + t1_2;
        W1_1 = -r*sin(a3 - theta1) + t1_1;
        W1_2 = sqrt(3)*(1 - 1/2) - r*cos(a3 - theta1) + t1_2;
        X1_1 = -1/4 + 1/2*r*sin(a1) + x1_1;
        X1_2 = sqrt(3)*(1 - 3/4) - 1/2*r*cos(a1) + x1_2;
        Y1_1 = 1/2 + 1/2*r*sin(a2) + y1_1;
        Y1_2 = sqrt(3)*(1 - 1/2) + 1/2*r*cos(a2) + y1_2;
        Z1_1 = -1/4 - 1/2*r*sin(a3) + z1_1;
        Z1_2 = sqrt(3)*(1 - 1/4) - 1/2*r*cos(a3) + z1_2;

        d1_1 = sqrt((X1_1 - U1_1)^2 + (X1_2 - U1_2)^2);
        d1_2 = sqrt((Y1_1 - V1_1)^2 + (Y1_2 - V1_2)^2);
        d1_3 = sqrt((Z1_1 - W1_1)^2 + (Z1_2 - W1_2)^2);
        d1_4 = sqrt((X1_1 - P1_1)^2 + (X1_2 - P1_2)^2);
        d1_5 = sqrt((Y1_1 - S1_1)^2 + (Y1_2 - S1_2)^2);
        d1_6 = sqrt((Z1_1 - P2_1)^2 + (Z1_2 - P2_2)^2);

    else

        U1_1 = r*sin(a3 - theta1) + t1_1;
        U1_2 = sqrt(3)*(1 - 1/2) + r*cos(a3 - theta1) + t1_2;
        V1_1 = -r*sin(a1 + theta1) + t1_1;
        V1_2 = sqrt(3)*(1 - 1/2) + r*cos(a1 + theta1) + t1_2;
        W1_1 = -r*sin(a2 - theta1) + t1_1;
        W1_2 = sqrt(3)*(1 - 1/2) - r*cos(a2 - theta1) + t1_2;
        X1_1 = -1/4 + 1/2*r*sin(a3) + x1_1;
        X1_2 = sqrt(3)*(1 - 3/4) + 1/2*r*cos(a3) + x1_2;
        Y1_1 = 1/2 - 1/2*r*sin(a1) + y1_1;
        Y1_2 = sqrt(3)*(1 - 1/2) + 1/2*r*cos(a1) + y1_2;
        Z1_1 = -1/4 - 1/2*r*sin(a2) + z1_1;
        Z1_2 = sqrt(3)*(1 - 1/4) - 1/2*r*cos(a2) + z1_2;

        d1_1 = sqrt((X1_1 - U1_1)^2 + (X1_2 - U1_2)^2);
        d1_2 = sqrt((Y1_1 - V1_1)^2 + (Y1_2 - V1_2)^2);
        d1_3 = sqrt((Z1_1 - W1_1)^2 + (Z1_2 - W1_2)^2);
        d1_4 = sqrt((X1_1 - Q1_1)^2 + (X1_2 - Q1_2)^2);
        d1_5 = sqrt((Y1_1 - Q2_1)^2 + (Y1_2 - Q2_2)^2);
        d1_6 = sqrt((Z1_1 - R1_1)^2 + (Z1_2 - R1_2)^2);
        
    end

end