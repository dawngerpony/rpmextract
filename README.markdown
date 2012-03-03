rpmextract.bash
===============

A little utility I wrote to download and extract an RPM file to disk.

Usage
-----

    rpmextract.bash <URL to RPM file>

Dependencies
------------

The following utilities must be installed in order for this tool to work properly:

1. ```wget```
1. ```rpm2cpio```

Development Environment
-----------------------

If you'd like to develop this tool, it should work in any RPM-capable development environment, but I use a Mac by default so needed to build a suitable environment so that I could build the RPM.

1. Download and install [VirtualBox](http://www.virtualbox.org).
1. Download and install '''vagrant''' & '''veewee''':

        gem update --system
        gem install vagrant veewee

1. Build and fire up your base box:

        TBD
        vagrant up
        vagrant ssh
        
1. Install ant:

        sudo yum install ant
        
1. Build the RPM:

        cd /vagrant
        ant clean rpm
        
1. Check and install the generated RPM:

        rpm -qlp /vagrant/build/rpm/RPMS/x86_64/rpmextract-1.0-1.x86_64.rpm
        sudo rpm -i /vagrant/build/rpm/RPMS/x86_64/rpmextract-1.0-1.x86_64.rpm

That's it!

Notes
-----

The following links were helpful when writing this Markdown document:
1. [Daring Fireball - markdown syntax](http://daringfireball.net/projects/markdown/syntax)
1. [GitHub - markdown preview](http://github.github.com/github-flavored-markdown/preview.html)

The following links were helpful when building the dev environment:
1. [Building vagrant boxes with veewee](http://www.ducea.com/2011/08/15/building-vagrant-boxes-with-veewee/)
1. [Building a simple RPM is... simple](http://mike.kruckenberg.com/archives/2004/12/building_a_simp.html)
