function fig = showManipulator(T, variables, variables_vals)
%SHOWMANIPULATOR Summary of this function goes here
%   Detailed explanation goes here TODO
    
    num_joints = size(T, 1)-1;

    fig = figure;
    prec_rf_p = [0, 0, 0].';
    for i=0:num_joints
        T_i_in_0 = eval(subs(get_cell(T, i, 0), variables, variables_vals)); 
        rf_R = T_i_in_0(1:3, 1:3);
        rf_p = T_i_in_0(1:3, 4);
        plotTransforms(rf_p.', rotm2quat(rf_R), 'FrameSize', 0.5);
        hold on;
        coords = [prec_rf_p.'; rf_p.'];
        plot3(coords(:, 1), coords(:, 2), coords(:, 3));
        hold on;
        prec_rf_p = rf_p;
    end
    title('Robot frames in current configuration plot');
    xlabel('x-axis'), ylabel('y-axis'), zlabel('z-axis');
    axis equal, grid on;
end

