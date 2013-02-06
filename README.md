How to use this repo
====================

Install Vagrant
---------------

### Install Virtualbox

Vagrant is a very convenient wrapper for headless Virtualbox. You'll need a recent copy to get going.

* [Official Downloads](https://www.virtualbox.org/wiki/Downloads) (all platforms)
* CB Mirrors (v4.2.6): [Windows](http://vat-cblades/boxes/VirtualBox-4.2.6-82870-Win.exe) | [OSX](http://vat-cblades/boxes/VirtualBox-4.2.6-82870-OSX.dmg)

### Install Vagrant

* [Official Downloads](http://downloads.vagrantup.com/)
* CB Mirrors (v1.0.6): [Windows](http://vat-cblades/boxes/Vagrant.msi) | [OSX](http://vat-cblades/boxes/Vagrant.dmg)

Clone this repo
---------------

    [~/]$ git clone git://github.com/christian-blades-cb/chefdemo_linuxclass.git

Vagrant up
----------

    [~/chefdemo_linuxclass]$ vagrant up
    [default] Importing base box 'quantal64'...
    ...
    [2013-02-06T06:18:10+00:00] INFO: Chef Run complete in 142.677613271 seconds
    [2013-02-06T06:18:10+00:00] INFO: Running report handlers
    [2013-02-06T06:18:10+00:00] INFO: Report handlers complete

Profit
------

* Browse to [http://localhost:8080](http://localhost:8080)
* SSH in and browse around your virtual environment

        [~/chefdemo_linuxclass]$ vagrant ssh
        Welcome to Ubuntu 12.10 (GNU/Linux 3.5.0-17-generic x86_64)

         * Documentation:  https://help.ubuntu.com/
        Last login: Sat Dec  8 22:02:18 2012
        vagrant@quantal64:~$   

Done playing? Time to destroy
-----------------------------

    [~/chefdemo_linuxclass]$ vagrant destroy

