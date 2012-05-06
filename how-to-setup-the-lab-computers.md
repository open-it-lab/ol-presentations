Install
-------
Use Ubuntu 12.04 LTS. Use the 32-bit image unless you have at least 3 or 4 GB
of RAM (our computers don't). By the way Ubuntu uses a PAE kernel by default
in the 32-bit install so you can use up to 64GB of RAM even with the 32-bit
install but the 64-bit image performs a little better but uses a little extra
hard drive (well, wine installs the 32-bit libraries if you use wine) and RAM.

Personally I prefer to not install updates or the extra
MP3/Flash stuff during the install but do it afterwards. It used to be possible
for the install to fail if there was a problem with installing those packages.
That bug was supposed to be fixed with 12.04 so the risk is pretty minimal.

After Install
-------------

####Software Center####
* Uncheck View > New Applications in Launcher
* Edit > Software Sources
  1. On the first tab, uncheck *Source Code*
  1. We can change the Ubuntu mirror we want to pull packages from, but this
     isn't currently done.
  1. On the **Other Software** tab, enable the *Partner* repository and disable the
     source code lines.
  1. On the **Updates** tab:
     * When there are security updates, download and install automatically.
     * When there are other updates, display every two weeks. (This doesn't matter
       much but should reduce the Update Manager popup from appearing slightly.)

####System Settings####
  1. In **User Acccounts**, unlock and turn on *Automatic Login*.
  1. In **Brightness and Lock**, turn off the *Lock* and *Require password
     when waking from suspend* (so that our users don't have to
     enter the password as often).

####Firefox####
Click Edit > Preferences
* On the **General** tab:
  - Delete the *about:startpage* line. When this line is blank, Mozilla's nicer default homepage is used.
* On the **Privacy** tab
  - Tell websites I don't want to be tracked.
  - Firefox will never remember history
  - Clear the history too.
* Switch back to the **General** tab.

####/etc/fstab####
On the final line, replace `UUID=` with `/dev/sda6`

(This is the swap directory and it happens to have different UUIDs on the
different computers we use. We could clone the swap directory too but why bother?)

####Apport####
* Apport is Ubuntu's automated bug reporting tool. It looks like it's enabled by default
for certain crashes/issues in Ubuntu 12.04 but the popup is too distracting/confusing
for people new to Ubuntu.
* Change the value in `/etc/default/apport` to 0 to disable

####Install useful stuff####
    sudo apt-get install arduino blender cheese fritzing gimp inkscape pitivi icedtea-plugin \
    libreoffice-presenter-console ubuntu-restricted-extras virtualbox git mplayer tree

####Setup Arduino####
1. Run Arduino for the first time. It will helpfully offer to add your user
 account to the correct system group.
1. Log out and back in.
1. Run Arduino again and click Tools>Serial Port>/dev/ttyUSB0 (You'll need to have an Arduino
plugged in to your USB port for that to work)

####Enable DVD support####
    sudo /usr/share/doc/libdvdread4/install-css.sh

####Cleanup####
When you've finished, clean up the cached package files to save space

    sudo rm -r /var/cache/apt

You can also purge the old `linux-image-*`

####Ubuntu images####
Add the [latest](http://www.ubuntu.com/download/ubuntu/download) Ubuntu 32-bit and 64-bit Ubuntu images to the *Downloads* folder.
Anyone can then Startup Disk Creator to make an Ubuntu installer out of their USB
stick (existing files on the USB stick are preserved) or they can burn a CD.

For VirtualBox on the lab computers, you need to use the 32-bit image since
we're running a 32-bit host OS.

####Prepare for the Command Line Workshop####
    git clone git://github.com/open-it-lab/cli-workshop.git cli-workshop


####Other interesting stuff (not currently installed)####
* ubuntu-dev-tools (pulls in bzr, g++, patch, quilt, and a bunch of Ubuntu/Debian specific
scripts for building packaging)
* scratch (http://bugs.debian.org/471927)
* Processing - for more advanced microcontroller stuff (http://bugs.debian.org/433270)

####Add PPAs (not currently done)####
    sudo add-apt-repository ppa:gnome3-team/gnome3

This might be cool if there's a LibreOffice stable PPA we want, for instance.

Clonezilla
----------
* [Download](http://clonezilla.org/downloads.php) and extract the files to the USB stick.
* Run `bash utils/linux/makeboot.sh /dev/sdd1`
* On the boot screen, choose Other>Boot from RAM.
* After the first blue wizard screen appears, remove the USB stick.
* Re-insert the USB disk when prompted.
* Save and load the image to the root directory of the USB stick is fine (it will use a subdirectory anyway)
* 6 or 7GB used partition will still fit on a 4GB USB stick.

Misc
----
You can connect to Wifi in the original computer, but it won't work in the
cloned machines because NetworkManager keeps track of the MAC address of the
computer's network card which is unique from computer to computer. To fix that:

1. Click *Edit Connections* in the network menu
1. Edit the Wifi connection.
1. Change the *Device MAC Address* to the wlan0 device.

####Apt Errors?####
    sudo rm -r /var/lib/apt/lists
    sudo apt-get update
