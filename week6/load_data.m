function [x, y] = load_data()

    % Data set selection
    disp("Data sets:")
    disp("1. noisy.mat")
    disp("2. noisy_low.mat")
    disp("3. curvy.mat")
    while 1 % Prompt for input until valid selection made
        switch input("Make Selection: ")
            case 1
                mat_file = "noisy.mat";
            case 2
                mat_file = "noisy_low.mat";
            case 3
                mat_file = "curvy.mat";
            otherwise
                disp("Invalid input.")
                continue
        end
        break
    end

    % Load data, handle inconsistency in curvy.mat
    load(mat_file);
    if mat_file == "curvy.mat"
        x = time;
        y = A;
    end

end