% load_data2.m

function [x, y] = load_data2()

    % Data set selection
    disp("Data sets:")
    disp("1. noisy.mat")
    disp("2. noisy_low.mat")
    disp("3. curvy.mat")
    for j = 1:5 % Prompt for input up to 5 times
        
        selection = input("Make Selection: ");
        
        if selection == 1
            mat_file = "noisy.mat";
        elseif selection == 2
            mat_file = "noisy_low.mat";
        elseif selection == 3
            mat_file = "curvy.mat";
        else
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