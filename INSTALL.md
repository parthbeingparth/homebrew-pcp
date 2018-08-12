### Mac OS X Installation

Installing PCP on MacOSX is done via https://brew.sh/ commands.
From a Terminal run:
```
$ brew install qt
$ brew link qt --force
$ brew install pcp
$ brew link pcp
$ pcp --version
```

The ouput for the last command will be something like
```
pcp version 4.1.1
```

Use the version numeber for creating symlinks (for version 4.1.1)
```
$ export version="4.1.1"
$ sudo ln -s /usr/local/Cellar/pcp/$version/etc/pcp.conf /etc/pcp.conf
$ sudo ln -s /usr/local/Cellar/pcp/$version/etc/pcp.env /etc/pcp.env
```