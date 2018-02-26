This module search for a line in data of all weeks.
To use, call

1. To use, call
function multiple_line_search(data_path, search, lines, output_path)
	* data_path: the path that contains all weeks folder (should be structured as weekfolder/"data"/matfiles)
	* search: An object of the Search class containing information about the searching parameters, check Search.m for details.
	* lines: An object of the line_array class containing information about the lines, check Line.m and line_array.m for details.
	* output_path: the path of the output files. 
2. hierarchical structure of the files: multiple_line_search -> line_search -> week_search -> channel -> output

Details for those files are found in the in-file documents. They can be used for other types of searches. Contact duo.tao.2017@gmail.com for help.
