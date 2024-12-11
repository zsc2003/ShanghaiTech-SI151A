% clear
clear; clc; close all;

% initialization
n = 10; p = 20;
A = randn(n, p);
x_org = randn(p, 1);
b = A * x_org + (1e-2) * randn(n, 1);
D = randn(n, p);
lambda = 0.1;

% origin problem
disp('==================== Origin Problem ====================');
cvx_begin
    variable x(p)
    minimize norm(A * x - b, 2) + lambda * norm(D * x, 1)
cvx_end

disp('CVX Status:');
disp(cvx_status);
disp('Optimal value:');
disp(cvx_optval);


% reform problem
disp('==================== Reform Problem ====================');
cvx_begin
    variable x(p)
    variable t
    variable s(n)
    minimize t + lambda * sum(s)
    subject to
        norm(A * x - b, 2) <= t;
        t >= 0;
        -s <= D * x;
        D * x <= s;
        s >= 0 * ones(n, 1);
cvx_end

disp('CVX Status:');
disp(cvx_status);
disp('Optimal value:');
disp(cvx_optval);