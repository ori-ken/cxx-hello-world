#!/usr/bin/python

#--- conf ---
data='aaaaa'

#--- lib ---
import sys


#--- main ---
if __name__ == '__main__':
   args = sys.argv
   f = open(args[1],'w')
   f.write(data)
   f.close
