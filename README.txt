holystone

Instructions on the Jamie's Computer's Windows build process:

### installers/

 - `python-*.exe`

Latest version of Python 3 installer, coming in both i386 and amd64 formats for appropriate selection at the time.

 - `ninite.exe`
 
Installs latest versions of: Chrome, 7-Zip, VLC, Java 8, .NET 4.7.2, Silverlight, Air, Shockwave, Notepad++, OpenOffice, Essentials
Can be obtained from {https://ninite.com}

### oobe/

 - `$oem$` folder

This series of folders needs to be  in the `sources/` folder of an unpacked Windows installation disk.
So that `/sources/$oem$/$$/Setup/Scripts/` contains `DeCompile.exe`, `OEM's.7z`, `OOBE.cmd`.
It then does /magic/ during the Windows setup to brand the machine appropriately.

Obtained from {https://forums.mydigitallife.net/threads/multi-oem-retail-project-mrp-mk3.71555/}

 - multioem_retail_project.7z

Contains the above files, plus a bunch of other tools from that above website.

### postsetup/

 - `stage0_seed.bat`

Should be invoked in the Post-Setup stage of a Windows installation. Invokes `stage1_sprout.bat`
in it's own command prompt, and then waits for it to complete. Normally the postsetup scripts run
silently, but displaying more information is more helpful for debugging; hence it makes its own
cmd window.

 - `stage1_sprout.bat`
Part of the way that normal Windows post-setup scripts work is that the folder they are stored in
is all removed. This is unhelpful, and we'd like to be able to run individual stages, so we jump
to our deployed Holystone project.

Stage 1 runs the Python installer, with some helpful flags. Once it's finished, it then calls
Stage 2 (a python stage) with the newly installed python.

- `stage2_seedling.py`

The final stage. Here we run ninites. Not much else atm.
