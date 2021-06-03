import os
from pathlib import Path
import sys
error = 0; 
for path in Path('src').rglob('*.ts'):
	#if path.name == 'config.ts':
		with open(path,'r') as fileName:
			first_line = fileName.readline()
		if "// Name: ID:" in first_line:
			#print(path.name + ' 0')
			error = error + 0;
		else:
			#print(path.name + ' 1')
			error = error + 1; 
print(error) 
sys.exit(0)
