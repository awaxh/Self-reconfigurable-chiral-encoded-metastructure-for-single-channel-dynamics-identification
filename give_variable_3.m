function [d3_1,d3_2,d3_3,d3_4,d3_5,d3_6]...
    = give_variable_3(r,a1,a2,a3,theta3,t3_1,t3_2,x3_1,x3_2,y3_1,y3_2,z3_1,z3_2,...
    P3_1,P3_2,P4_1,P4_2,Q3_1,Q3_2,Q4_1,Q4_2,R3_1,R3_2,S3_1,S3_2, bool_3)

    if bool_3==0

        U3_1 = r*sin(a1 + theta3) + t3_1;
        U3_2 = sqrt(3)*(3 - 1/2) - r*cos(a1 + theta3) + t3_2;
        V3_1 = r*sin(a2 - theta3) + t3_1;
        V3_2 = sqrt(3)*(3 - 1/2) + r*cos(a2 + theta3) + t3_2;
        W3_1 = -r*sin(a3 - theta3) + t3_1;
        W3_2 = sqrt(3)*(3 - 1/2) - r*cos(a3 - theta3) + t3_2;
        X3_1 = -1/4 + 1/2*r*sin(a1) + x3_1;
        X3_2 = sqrt(3)*(3 - 3/4) - 1/2*r*cos(a1) + x3_2;
        Y3_1 = 1/2 + 1/2*r*sin(a2) + y3_1;
        Y3_2 = sqrt(3)*(3 - 1/2) + 1/2*r*cos(a2) + y3_2;
        Z3_1 = -1/4 - 1/2*r*sin(a3) + z3_1;
        Z3_2 = sqrt(3)*(3 - 1/4) - 1/2*r*cos(a3) + z3_2;

        d3_1 = sqrt((X3_1 - U3_1)^2 + (X3_2 - U3_2)^2);
        d3_2 = sqrt((Y3_1 - V3_1)^2 + (Y3_2 - V3_2)^2);
        d3_3 = sqrt((Z3_1 - W3_1)^2 + (Z3_2 - W3_2)^2);
        d3_4 = sqrt((X3_1 - P3_1)^2 + (X3_2 - P3_2)^2);
        d3_5 = sqrt((Y3_1 - S3_1)^2 + (Y3_2 - S3_2)^2);
        d3_6 = sqrt((Z3_1 - P4_1)^2 + (Z3_2 - P4_2)^2);

    else

        U3_1 = r*sin(a3 - theta3) + t3_1;
        U3_2 = sqrt(3)*(3 - 1/2) + r*cos(a3 - theta3) + t3_2;
        V3_1 = -r*sin(a1 + theta3) + t3_1;
        V3_2 = sqrt(3)*(3 - 1/2) + r*cos(a1 + theta3) + t3_2;
        W3_1 = -r*sin(a2 - theta3) + t3_1;
        W3_2 = sqrt(3)*(3 - 1/2) - r*cos(a2 - theta3) + t3_2;
        X3_1 = -1/4 + 1/2*r*sin(a3) + x3_1;
        X3_2 = sqrt(3)*(3 - 3/4) + 1/2*r*cos(a3) + x3_2;
        Y3_1 = 1/2 - 1/2*r*sin(a1) + y3_1;
        Y3_2 = sqrt(3)*(3 - 1/2) + 1/2*r*cos(a1) + y3_2;
        Z3_1 = -1/4 - 1/2*r*sin(a2) + z3_1;
        Z3_2 = sqrt(3)*(3 - 1/4) - 1/2*r*cos(a2) + z3_2;

        d3_1 = sqrt((X3_1 - U3_1)^2 + (X3_2 - U3_2)^2);
        d3_2 = sqrt((Y3_1 - V3_1)^2 + (Y3_2 - V3_2)^2);
        d3_3 = sqrt((Z3_1 - W3_1)^2 + (Z3_2 - W3_2)^2);
        d3_4 = sqrt((X3_1 - Q3_1)^2 + (X3_2 - Q3_2)^2);
        d3_5 = sqrt((Y3_1 - Q4_1)^2 + (Y3_2 - Q4_2)^2);
        d3_6 = sqrt((Z3_1 - R3_1)^2 + (Z3_2 - R3_2)^2);

    end

end