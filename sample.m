grades = randn(5,9)*3+90
grades(3)

mean(grades,2) % computes across dimension
mean(grades, 'all') % computes across all values in matrix

% match name of file to function