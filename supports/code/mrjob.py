#!/usr/bin/env python
import sys
import argparse

class Job: 
    def __init__(self): 
        self.data = {}

    def output_data(self):
        for e  in self.data:  
            print '{},{}'.format(e, self.data[e])

class Reducer(Job): 
    def count_event(self):
        for line in sys.stdin:
    
            line = line.split(",")
            if line[0] in self.data.keys():
                self.data[line[0]] = self.data[line[0]] + int(line[1])
            else: 
                self.data[line[0]] = int(line[1])

class Mapper(Job): 
    def count_event(self):
        for line in sys.stdin:
            line = line.split(",")

            if line[5] in self.data.keys(): 
                self.data[line[5]] += 1
            else: 
                self.data[line[5]] = 1

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("mode")
    parser.add_argument("function")

    args = parser.parse_args()

    if args.mode == "map": 
        job = Mapper()
    elif args.mode == "reduce":
        job = Reducer()

    if args.function == "count_event": 
        job.count_event()

    job.output_data()

if __name__ == '__main__':
    main()