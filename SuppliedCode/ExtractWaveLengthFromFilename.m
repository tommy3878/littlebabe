function [ value ] = ExtractWaveLengthFromFilename( str )
    
    try
        % http://www.mathworks.com/help/matlab/matlab_prog/regular-expressions.html
        value = regexp(str, '_f.*n_|_f.*m_|_f.*w_', 'match');

        % Extract the numeric value
        value = regexp(value, '[0-9]*', 'match');

        % Convert to double for further processing
        % For some reason it only return 1x1 cell value within the
        % function, but not the case when execute directly within command
        % window .... So further process to distill and convert the value
        % to double
        value = str2double(value{1});
    
    catch
        % On error that cant find the value, return -1
        % http://www.mathworks.com/help/matlab/matlab_prog/use-trycatch-to-handle-errors.html
        value = -1;
        
    end
    
end
