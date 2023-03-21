import os
import time

def main():
    start = time.time()
    for i in range(10):
        out = os.popen('make clean && make -j100 OPT_VAL=0 defaultsize')
        out.read()
    end = time.time()
    print(start)
    print(end)
    print((end-start)/10)

if __name__ =='__main__':
    main()
