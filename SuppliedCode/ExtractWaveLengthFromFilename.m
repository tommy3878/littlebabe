function [ value ] = ExtractWaveLengthFromFilename( str )
    
    try
        % http://www.mathworks.com/help/matlab/matlab_prog/regular-expressions.html
        value = regexp(str, '_f.*n_|_f.*m_|_f.*w_', 'match');

        % Extract the numeric value
        value = regexp(value, '[0-9]*', 'match');

        % Convert to double for further processing
        value = str2double(value{1});
    
    catch
        % On error that cant find the value, return -1
        value = -1;
        
    end
    
end
