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

Go to http://127.0.0.1:8080/vagrant.html.

Configure your corporate proxy
------------------------------

Install [Proxy Configuration Plugin](http://tmatilai.github.io/vagrant-proxyconf/) for Vagrant:

	vagrant plugin install vagrant-proxyconf

Create a Vagrantfile in your home folder:

	$HOME/.vagrant.d/Vagrantfile

With:

	Vagrant.configure("2") do |config|
		if Vagrant.has_plugin?("vagrant-proxyconf")
			config.proxy.http     = "http://proxy.example.com:8080/"
			config.proxy.https    = "http://proxy.example.com:8080/"
			config.proxy.no_proxy = "localhost,127.0.0.1"
		end
	end

Add environment variables:

	export http_proxy=http://proxy.example.com:8080/
	export https_proxy=http://proxy.example.com:8080/
