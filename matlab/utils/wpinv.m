function M = wpinv(J, W)
% WPINV  Computes the weighted pseudoinverse of a matrix.
%   M = WPINV(J, W) computes the weighted pseudoinverse of matrix J using
%   the weighting matrix W.

    W1 = inv(W);
    M = W1 * J.' * inv(J * W1 * J.')
end