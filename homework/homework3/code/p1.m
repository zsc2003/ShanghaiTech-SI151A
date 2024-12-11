% clear
clear; clc; close all;

% initialization
n = 10; p = 20;
A = randn(n, p);
x_org = randn(p, 1);
b = A * x_org + (1e-2) * randn(n, 1);

% origin problem
disp('==================== Origin Problem ====================');
cvx_begin
    variable x(p)
    minimize norm(A * x - b, inf)
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
    minimize (t)
    subject to
        -t * ones(n, 1) <= A * x - b;
        A * x - b <= t * ones(n, 1);
        t >= 0;
cvx_end

disp('CVX Status:');
disp(cvx_status);
disp('Optimal value:');
disp(cvx_optval);