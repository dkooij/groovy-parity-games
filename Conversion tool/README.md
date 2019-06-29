# Conversion Tool
Tool to convert textual [Oink](https://github.com/trolando/oink) parity game representations to graph representations in Groove.

**Last updated:** _June 29th, 2019_.

## Prerequisites
- Python 3 ([python.org](https://python.org), tested with Python 3.7.3).

## Usage Instructions
1. Place `convert.py` in a folder containing Oink parity game representations.
2. Execute it in one of the following ways:
   1. **Without arguments:** all Oink parity games will automatically be converted to Groove graphs with the same name.
   2. **With one argument:** only the Oink parity game with the name as given in the argument will be converted to a Groove graph with the same name.
   3. **With two arguments:** only the Oink parity game with the name as given in the first argument will be converted to a Groove graph with the name as given in the second argument.
3. If you want to use the converted Groove graphs, copy them to the root of the Groove project directory (the `.gps` folder).
