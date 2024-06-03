import pandas as pd
import sys

#path = "/Users/christopherandrew/Documents/python-bash-scripting/filtr/file_to_filter/c-level_contacts.csv"

def main():

  if len(sys.argv) != 4:
    print("Usage: python filtr.py '/path/to/file' 'col_to_filter' 'filters'")
    return
  
  arg1 = sys.argv[1]
  arg2 = sys.argv[2]
  arg3 = sys.argv[3]

  data = pd.read_csv(arg1)
  df = pd.DataFrame(data)


if __name__ == "__main__":
  main()
