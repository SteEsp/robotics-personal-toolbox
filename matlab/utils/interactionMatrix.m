function Jp = interactionMatrix(u,v,Z)
%INTERACTIONMATRIX Summary of this function goes here
%   Detailed explanation goes here
    
    syms lambda
    Jp = sym(zeros(2, 6));
    
    Jp(1,1) = -lambda/Z;
    Jp(1,3) = u/Z;
    Jp(1,4) = (u*v)/lambda;
    Jp(1,5) = -(lambda + u^2/lambda);
    Jp(1,6) = v;
    
    Jp(2,2) = -lambda/Z;
    Jp(2,3) = v/Z;
    Jp(2,4) = lambda + v^2/lambda;
    Jp(2,5) = -u*v / lambda;
    Jp(2,6) = -u;
    
end

