### Mac OS X Installation

Installing PCP on MacOSX is done via https://brew.sh/ commands.
From a Terminal run:
```
$ brew install qt
$ brew link qt --force
$ brew install warewolf96/pcp/pcp
$ brew link warewolf96/pcp/pcp
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

## Post-install steps

You will need to start the PCP Collection Daemon (PMCD), as root:

Mac OS X:
```
# /Library/StartupItems/pcp/pmcd start
```