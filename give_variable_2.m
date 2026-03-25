function [d2_1,d2_2,d2_3,d2_4,d2_5,d2_6]...
    = give_variable_2(r,a1,a2,a3,theta2,t2_1,t2_2,x2_1,x2_2,y2_1,y2_2,z2_1,z2_2,...
    P2_1,P2_2,P3_1,P3_2,Q2_1,Q2_2,Q3_1,Q3_2,R2_1,R2_2,S2_1,S2_2, bool_2)

    if bool_2==0

        U2_1 = r*sin(a1 + theta2) + t2_1;
        U2_2 = sqrt(3)*(2 - 1/2) - r*cos(a1 + theta2) + t2_2;
        V2_1 = r*sin(a2 - theta2) + t2_1;
        V2_2 = sqrt(3)*(2 - 1/2) + r*cos(a2 + theta2) + t2_2;
        W2_1 = -r*sin(a3 - theta2) + t2_1;
        W2_2 = sqrt(3)*(2 - 1/2) - r*cos(a3 - theta2) + t2_2;
        X2_1 = -1/4 + 1/2*r*sin(a1) + x2_1;
        X2_2 = sqrt(3)*(2 - 3/4) - 1/2*r*cos(a1) + x2_2;
        Y2_1 = 1/2 + 1/2*r*sin(a2) + y2_1;
        Y2_2 = sqrt(3)*(2 - 1/2) + 1/2*r*cos(a2) + y2_2;
        Z2_1 = -1/4 - 1/2*r*sin(a3) + z2_1;
        Z2_2 = sqrt(3)*(2 - 1/4) - 1/2*r*cos(a3) + z2_2;

        d2_1 = sqrt((X2_1 - U2_1)^2 + (X2_2 - U2_2)^2);
        d2_2 = sqrt((Y2_1 - V2_1)^2 + (Y2_2 - V2_2)^2);
        d2_3 = sqrt((Z2_1 - W2_1)^2 + (Z2_2 - W2_2)^2);
        d2_4 = sqrt((X2_1 - P2_1)^2 + (X2_2 - P2_2)^2);
        d2_5 = sqrt((Y2_1 - S2_1)^2 + (Y2_2 - S2_2)^2);
        d2_6 = sqrt((Z2_1 - P3_1)^2 + (Z2_2 - P3_2)^2);

    else

        U2_1 = r*sin(a3 - theta2) + t2_1;
        U2_2 = sqrt(3)*(2 - 1/2) + r*cos(a3 - theta2) + t2_2;
        V2_1 = -r*sin(a1 + theta2) + t2_1;
        V2_2 = sqrt(3)*(2 - 1/2) + r*cos(a1 + theta2) + t2_2;
        W2_1 = -r*sin(a2 - theta2) + t2_1;
        W2_2 = sqrt(3)*(2 - 1/2) - r*cos(a2 - theta2) + t2_2;
        X2_1 = -1/4 + 1/2*r*sin(a3) + x2_1;
        X2_2 = sqrt(3)*(2 - 3/4) + 1/2*r*cos(a3) + x2_2;
        Y2_1 = 1/2 - 1/2*r*sin(a1) + y2_1;
        Y2_2 = sqrt(3)*(2 - 1/2) + 1/2*r*cos(a1) + y2_2;
        Z2_1 = -1/4 - 1/2*r*sin(a2) + z2_1;
        Z2_2 = sqrt(3)*(2 - 1/4) - 1/2*r*cos(a2) + z2_2;

        d2_1 = sqrt((X2_1 - U2_1)^2 + (X2_2 - U2_2)^2);
        d2_2 = sqrt((Y2_1 - V2_1)^2 + (Y2_2 - V2_2)^2);
        d2_3 = sqrt((Z2_1 - W2_1)^2 + (Z2_2 - W2_2)^2);
        d2_4 = sqrt((X2_1 - Q2_1)^2 + (X2_2 - Q2_2)^2);
        d2_5 = sqrt((Y2_1 - Q3_1)^2 + (Y2_2 - Q3_2)^2);
        d2_6 = sqrt((Z2_1 - R2_1)^2 + (Z2_2 - R2_2)^2);

    end

end