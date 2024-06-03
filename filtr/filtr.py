import pandas as pd
import sys

#path = "/Users/christopherandrew/Documents/python-bash-scripting/filtr/file_to_filter/c-level_contacts.csv"
arg1 = sys.argv[1]
arg2 = sys.argv[2]

def main():
  if len(sys.argv) != 3:
    print("Usage: python filtr.py /path/to/file <'filters in single quotes'>")
    return

if __name__ == "__main__":
  main()
