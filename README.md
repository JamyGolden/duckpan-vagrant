[DuckPAN](https://github.com/duckduckgo/p5-app-duckpan) is an application built to provide developers a testing environment for [DuckDuckHack Instant Answers](http://duckduckhack.com). It allows you to test instant answer triggers and preview their visual design and output.

This project provides a Vagrant-based development setup for DuckPAN. This project allows a user to run the various duckduckhack projects locally.

### Installation

1. Install: [Vagrant](http://docs.vagrantup.com/v2/installation/index.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

2. Clone this repo. `git clone https://github.com/JamyGolden/duckpan-vagrant.git`

3. Run `vagrant up` within the cloned repo.

The box takes some time to stand up. Vagrant will first download the ubuntu-server box before intialising the setup scripts. As the duckpan-install script runs, you won't see any output for a few minutes. On my 2.7 Ghz i7 Macbook Pro, it takes 18 minutes to complete.

Great, your vagrant box should be set up correctly.

### Usage
Clone the duckduckhack repo you'd like to work on into the `repos/` folder.
```
$ git clone https://github.com/duckduckgo/zeroclickinfo-goodies.git ./repos/zeroclickinfo-goodies
$ vagrant ssh # This will ssh you into your local vagrant ubuntu-server
```

Now that you're in the local vagrant ubuntu-server:
```
$ cd /code/repos/zeroclickinfo-goodies # Navigate to the project you've cloned
$ duckpan server # The project should be running on http://localhost:5000
```

### Extra information
You can find the usage instructions for DuckPAN here: https://github.com/duckduckgo/p5-app-duckpan#using-duckpan

By default, after starting `duckpan server` you can access the web interface at http://localhost:5000 or http://0.0.0.0:5000
