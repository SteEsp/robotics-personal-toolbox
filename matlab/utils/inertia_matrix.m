function I = inertia_matrix(i)

str_x = sprintf("I_xx_%d", i);
str_y = sprintf("I_yy_%d", i);
str_z = sprintf("I_zz_%d", i);

I_xx_i = sym(str_x);
I_yy_i = sym(str_y);
I_zz_i = sym(str_z);

assume([I_xx_i I_yy_i I_zz_i], 'positive');

I = diag([I_xx_i I_yy_i I_zz_i]);

end