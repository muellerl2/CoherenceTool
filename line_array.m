function arr = line_array(lines, run, observatory, resolution)
	% Create an array of Line object
	% Duo Tao, 2/26/2018
	for i = length(lines) : -1 : 1
		arr(i) = Line(lines(i), run, observatory, resolution);
	end
end
