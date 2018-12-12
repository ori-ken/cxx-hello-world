#!/usr/bin/python

#--- conf ---

#--- lib ---
import sys

#--- main ---
if __name__ == '__main__':
   args = sys.argv
   f = open(args[1],'r')
   txt = f.read()
   f.close
   f_out = open(args[1],'w')
   f_out.write(txt.upper())
   f_out.close
