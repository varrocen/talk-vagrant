# Vagrant

Vagrant talk with demos.

Requirements
------------

* Asciidoctor
* Vagrant
* VirtualBox

Build with Asciidoctor
----------------------

Install Asciidoctor backend and reveal.js:

	git clone git://github.com/asciidoctor/asciidoctor-reveal.js.git
	git clone git://github.com/hakimel/reveal.js.git

Build Vagrant talk:

	asciidoctor -T asciidoctor-reveal.js/templates/slim vagrant.adoc

Result:

	vagrant.html

Build with Vagrant
------------------

Run:

	vagrant up

Go to http://127.0.0.1:4567/vagrant.html.
