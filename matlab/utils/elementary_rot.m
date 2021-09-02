function R = elementary_rot(axis, theta)
    if (axis == 'X')
        R = [
            1 0 0;
            0 cos(theta) -sin(theta);
            0 sin(theta) cos(theta)
        ];
    end
    if (axis == 'Y')
        R = [
            cos(theta) 0 sin(theta);
            0 1 0;
            -sin(theta) 0 cos(theta)
        ];
    end
    if (axis == 'Z')
        R = [
            cos(theta) -sin(theta) 0;
            sin(theta) cos(theta) 0;
            0 0 1
        ];
    end
end

