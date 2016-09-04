function [ value ] = ExtractWaveLengthFromFilename( str )

    % http://www.mathworks.com/help/matlab/matlab_prog/regular-expressions.html
    value = regexp(str, '_f.*n_|_f.*m_|_f.*w_', 'match');
    
    value = regexp(value, '[0-9]{3}', 'match');
    
end
