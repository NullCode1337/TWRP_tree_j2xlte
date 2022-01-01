## TWRP For the Galaxy J2 2016
Device Configuration for compiling TWRP by yourself. Please credit me (@NullCode on XDA) and all the appropriate people if you use it in one of your builds. 


Note: This device tree now has official builds due to the kindness of BigBiff (he helped me out a lot with Gerrit). Thank you!


These builds can be found here: https://twrp.me/samsung/samsunggalaxyj22016.html

## Bugs
- USB Storage not working (won't be fixed sad)

## Instructions
To use this tree for compiling TWRP, do the following: 

* Have Repo and Git installed. For installing Repo follow everything [here](https://source.android.com/setup/develop#installing-repo) and install Git by doing the following:
```bash
sudo apt-get install git -y
git config --global user.name INSERT YOUR USERNAME
git config --global user.email MY_NAME@example.com
```
* Install the required packages:
```bash
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python3 python-is-python2
```

Now follow this: 

1: Open your Linux machine.

2: Make a folder with any name.
```bash
mkdir ~/TWRP
cd ~/TWRP
```
3: repo sync the TWRP-6.0 sources:
```bash
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0
repo sync -c --no-clone-bundle --force-sync -j{insert the number of jobs you want}
```
4: Once done open the folder where you synced the sources
```bash
cd ~/TWRP
```
5: Create the following folders:
```bash
mkdir device/samsung
cd device/samsung
```
6: Now git clone my repository:
```bash
git clone https://github.com/NullCode1337/TWRP_tree_j2xlte.git j2xlte/
```

7: Now close that terminal and open a fresh terminal [This is real talk, because we will start building. Pay attention]
```bash
cd ~/TWRP
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_j2xlte-eng
mka recoveryimage
```

Depending on what you did, this build will either succeed, or fail. If it succeeded, you will see the TWRP image in the "out" folder. But if it didn't, follow the steps above properly again.

## Contributing
If anyone ever manages to fix the MTP bug by either filing an issue or submitting a pull request, I will be forever grateful.

## Stars of the show
ME (For obvious reasons)


Aditya KR on Github (because I sto- took some BoardConfig props)


And of course, TeamWin Recovery Project Team for the recovery itself.
