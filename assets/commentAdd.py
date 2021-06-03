import os
from pathlib import Path
import sys
for path in Path('src').rglob('*.ts'):
	#if path.name == 'config.ts':
		#print(path.name)  
		#sys.exit(0)
		dummy = path.name 
		with open(path,'r') as read_obj, open(dummy,'w') as write_obj:
			write_obj.write('// Name: ID:\n')
			for line in read_obj:
				write_obj.write(line)
		os.remove(path)
		os.rename(dummy,path)
print('0')
sys.exit(0)
