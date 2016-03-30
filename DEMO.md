# Demo

Vagrant
-------

Up and running:

    vagrant up

See boxes cache:

    vagrant box list

See VM state:

    vagrant status

SSH into the machine:

    vagrant ssh

See synced folder:

    ls /vagrant
    touch /vagrant/foo

Go to http://127.0.0.1:4567/vagrant.html.

Halt and destroy:

    vagrant halt
    vagrant destroy

Otto
----

Verifying the Installation:

    otto

Let's start a development environment:

    git clone https://github.com/hashicorp/otto-getting-started.git
    cd otto-getting-started
    otto compile
    otto dev

Otto don't work.
