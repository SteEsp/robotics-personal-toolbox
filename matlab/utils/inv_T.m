function T_inv = inv_T(T)
%TINV Summary of this function goes here
%   Detailed explanation goes here TODO
    R = T(1:3, 1:3);
    p = T(1:3, 4);
    T_inv = [R.', -R.'*p; 
             0, 0, 0, 1];
end

