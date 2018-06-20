dataO1 = '/home/eric.coughlin/public_html/O1/LineSearch';
dataO2 = '/home/mcoughlin/public_html/O2/LineSearch';
output_path = '/home/albert.einstein/CoherenceTool/output_buffer';

% defaults
zoom = 1;
filter = -30;
resolution = 0.001;
run = 'O2';
observatory = 'L1'

% for the search
search1 = Search(zoom, filter);
% for the lines
lines = [35.7632];
l1 = line_array(lines, run, observatory, resolution);
% do the search
multiple_line_search(dataO2, search1, l1, output_path);

