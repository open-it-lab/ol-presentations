Install
=======

After Install
=============

Software Center
---------------
* Uncheck View > New Applications in Launcher
* Edit > Software Sources
  1. On the first tab, uncheck `Source Code`
  1. We can change the Ubuntu mirror we want to pull packages from, but this
     isn't currently done.
  1. On the `Other Software` tab, enable the Partner repository and disable the
     source code lines.
  1. On the `Updates` tab:
     When there are security updates, download and install automatically.
     When there are other updates, display every two weeks. (This doesn't matter
     much but should reduce the Update Manager popup from appearing slightly.)

System Settings
---------------
  1. In `User Acccounts`, unlock and turn on `Automatic Login`
  1. In `Brightness and Lock`, turn off the `Lock` (so that our users don't have to
    enter the password as often)

Firefox
-------
Click Edit > Preferences
* On the `General` tab:
  - Delete the `about:startpage` line, when this line is blank, Mozilla's nicer default homepage is used.
* On the `Privacy` tab
  - Tell websites I don't want to be tracked.
  - Firefox will never remember history
  - Clear the history too.
* Switch back to the `General` tab.

/etc/fstab
----------
On the final line, replace `UUID=` with `/dev/sda6`

(This is the swap directory and it happens to have different UUIDs on the
different computers we use. We could clone the swap directory too but why bother?)

Install useful stuff
--------------------
    sudo apt-get install arduino blender cheese gimp inkscape pitivi icedtea-plugin \
    libreoffice-presenter-console ubuntu-restricted-extras virtualbox git mplayer tree

Enable DVD support
------------------
    sudo /usr/share/doc/libdvdread4/install-css.sh

Cleanup
-------
When you've finished, clean up the cached package files to save space

    sudo rm -rf /var/cache/apt

Prepare for the Command Line Workshop
-------------------------------------
    git clone git://github.com/open-it-lab/cli-workshop.git cli-workshop


Other interesting stuff (not currently installed)
-------------------------------------------------
* ubuntu-dev-tools (pulls in bzr, g++, patch, quilt, and a bunch of Ubuntu/Debian specific
scripts for building packaging)
* scratch (http://bugs.debian.org/471927)

Add PPAs (not currently done)
-----------------------------
    sudo add-apt-repository ppa:

This might be cool if there's a LibreOffice stable PPA we want, for instance.

Clonezilla
==========

Misc
====

Apt Errors?
-----------
    sudo rm -r /var/lib/apt/lists
    sudo apt-get update
