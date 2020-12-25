# TWRP For the Galaxy J2 2016
Device Configuration for compiling TWRP by yourself. Please credit me (@NullCode on XDA) and all the appropriate people if you use it in one of your builds. 

## Bugs
MTP still not working 

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
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python-2.7 python 3.9 python-is-python2
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
repo sync --current-branch --no-clone-bundle --force-sync
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
git clone https://github.com/NullCode13/TWRP_tree_j2xlte.git j2xlte/
```

7: Now close that terminal and open a fresh terminal [This is real talk, because we will start building. Pay attention]
```bash
cd ~/TWRP
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_j2xlte-eng
mka recoveryimage
```

Depending on what you did, this build will either succeed, or fail. If it succeeded, you will see the TWRP image in the "out" folder. But if it didn't, follow the steps above properly again.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Stars of the show
ME (For obvious reasons)


Aditya KR on Github (because I sto- took some BoardConfig props)


And of course, Team Win Recovery Project Team for creating this amazing project.
