# PBRP For the Galaxy J2 2016
This minimal device tree is all you need to compile Pitch Black Recovery Project for yourself! Please credit me (@NullCode on XDA) and all the appropriate people if you use it in one of your builds. 

## Bugs
Touch is buggy [kernel side bug]

Lag [due to low RAM]

Flashlight does not work

Aroma FM crashes everything [Use normal FM in "Advanced"]

## Instructions
To use this tree for compiling PBRP, do the following: 

* Have Repo and Git installed. For installing Repo follow everything [Here](https://source.android.com/setup/develop#installing-repo) and install Git by doing the following:
```bash
sudo apt-get install git -y
git config --global user.name "INSERT YOUR USERNAME"
git config --global user.email "MY_NAME@example.com"
```
* Install the required packages:
```bash
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python-2.7 python 3.9 python-is-python2
```

Now follow this: 

1: Open your Linux machine.

2: Make a folder with any name.
```bash
mkdir ~/PBRP
cd ~/PBRP
```
3: repo sync the PBRP-6.0 sources:
```bash
repo init --depth=1 -u git://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-6.0
repo sync --no-clone-bundle
```
4: Once done open the folder where you synced the sources
```bash
cd ~/PBRP
```
5: Create the following folders:
```bash
mkdir device
cd device
mkdir samsung
cd samsung
```
6: Now git clone my repository:
```bash
git clone https://github.com/Ishaq06/PBRP_tree_j2xlte.git j2xlte/
```

7: Now close that terminal and open a fresh terminal [This is real talk, because we will start building. Pay attention]
```bash
cd ~/PBRP
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
lunch omni_j2xlte-eng
mka recoveryimage
```

Depending on what you did, this build will either succeed, or fail. If it succeeded, you will see the TWRP flashable zip in the "out" folder. But if it didn't, follow the steps above properly again.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Stars of the show
SebaUbuntu (For his amazing Baseline Tree generator which I modified)


ME (For obvious reasons)


djeman on Github (because I stole some of his j3xnlte BoardConfig props)


And of course, Pitch Black Recovery Project Team for building this amazing project.
