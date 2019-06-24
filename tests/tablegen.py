"""
Generate a HTML table for functions.md
"""

import argparse
import os
import sys

def generate_table(inputfile, outputfile, rows, cols):
	"""
	Generate HTML table for functions.md
		:inputfile: (str) the name of the input file
		:outputfile: (str) the name of the output file
		:rows: (int) the number of rows
		:cols: (int) the number of columns
	"""
	with open(inputfile, 'r') as f:
		content = f.read().split()

	assert not rows*cols < len(content)
	content.sort()
	functions = [[] for row in range(0, rows)]
	for index, item in enumerate(content):
		functions[index % rows].append(item)

	with open(outputfile, 'w+') as f:
		f.write("<table>\n")
		for rindex, row in enumerate(range(0, rows)):
			f.write("\t<tr>\n")
			for cindex, col in enumerate(range(0, cols)):
				if functions[rindex] == [] or len(functions[rindex]) <= cindex:
					function = ""
				else:
					function = functions[rindex][cindex]
				f.write(f"\t\t<td><a href=\"#{function}\">{function}</a></td>\n")
			f.write("\t</tr>\n")
		f.write("</table>")

def build_parser():
	"""Build CLI parser"""
	parser = argparse.ArgumentParser(description=__doc__, formatter_class = argparse.ArgumentDefaultsHelpFormatter)
	parser.add_argument('-f', '--file', type=str, default="", required=True, help="input file")
	parser.add_argument('-r', '--rows', type=int, default=0, required=True, help="number of rows for table")
	parser.add_argument('-c', '--cols', type=int, default=0, required=True, help="number of cols for table")
	parser.add_argument('-o', '--output', type=str, default="output.html", required=False, help="the name of the output file")
	return parser

def main():
	parser = build_parser()
	args = parser.parse_args()
	
	assert not args.rows == 0
	assert not args.cols == 0
	assert not args.file == ""
	assert os.path.isfile(args.file)

	generate_table(args.file, args.output, args.rows, args.cols)

if __name__ == '__main__':
	main()
