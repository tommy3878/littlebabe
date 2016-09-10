function [ value ] = ExtractWaveLengthFromFilename( str )
    % to use regexp to find and extract the waveLength from file name and
    % wraped within try and catch for error handling
    try
        % http://www.mathworks.com/help/matlab/matlab_prog/regular-expressions.html
        % Extract only matched pattern with _f + 3 digits + end with (n_ or
        % m_ or w_)
        value = regexp(str, '_f\d{3}n_|_f\d{3}m_|_f\d{3}w_', 'match');
        
        % If the first regexp did not have any error, then it will extract
        % the 3 digits value from the string
        value = regexp(value, '\d{3}', 'match');

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
