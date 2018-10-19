import os
import os.path
import sys
import subprocess

def ninite():
    # Use Popen to "daemonize" the window
    # Ninite doesn't close itself when done, and if we wait for it
    # the post-setup stage needs user intervention to end
    subprocess.Popen(["installers/ninite.exe"])


if __name__=='__main__':
    # Change cwd to script folder.
    # That should put us in C:/Holystone
    path = os.path.realpath(__file__)
    dir = os.path.dirname(path)
    os.chdir(dir)

    ninite()
