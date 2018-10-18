import os
import os.path
import sys
import subprocess

def ninite():
    subprocess.run(["ninite.exe"])


if __name__=='__main__':
    # Change cwd to script folder.
    # That should put us in C:/Holystone
    path = os.path.realpath(__file__)
    dir = os.path.dirname(path)
    os.chdir(dir)

    ninite()
