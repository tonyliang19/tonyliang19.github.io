---
title: Cheatsheet
description: Useful commands in Linux Bash
---

This page contains useful? or maybe essential tips for Linux usage. Still under development

## Change passwords for users

The bash `passwd` command is used to change password for user in the system,altough you need sudo access to do so:

`passwd [username]`

If no `username` where provided, it would change the password for the current log-on user.

## Linux Install Package guide

To install package in Linux, i.e. `*.rpm` packages through terminal, use the `Alien` utility like below:

First copy the `*.rpm` file to WSL:

`cp /mnt/c/Users/<your_username>/Downloads/<the_package.rpm> ~`, where `~` should be the root path or `/home/username` of the WSL

then in your WSL terminal:

`apt-get install alien dpkg-dev debhelper build-essential`

**NOTE**: This above might ask you to use `sudo` access, simply add sudo before the command: `sudo apt-get ... build-essential`.

Then after installing `alien`, prompt in the following:

`alien <package_name>.rpm`

And finally install it:

`dpkg -i package_name.deb`


### Upgrade packages

Use the following command to see if there are any package upgradable:

`apt list --upgradable`

And to update those packages:

`apt-get upgrade`, after this command, it would ask you to upgrade or not [Y/n] and telling you any additional spaces it might requires

### Issues in installing

If your `apt-get install <package_name>` is failing, check if you have any typo, `CASE_SENSITVE`, otherwise update your `apt` by:

`sudo apt update`
<!---
### Install without sudo privilege

If you're a user with limited access, i.e. you are not sudo user, to instal package requires a series of step like the following to compile the package from source:

1. Check if `$HOME/.profile` exists, and find if you see the following block:

		if [ -d "$HOME/.local/bin" ] ; then
			PATH="$HOME/.local/bin:$PATH"
		fi

If it does not exists, add it to the `$HOME/.profile`, where this tells the terminal to add everything within `$HOME/.local/bin` to you path, so it can find the executable and make it available to you, and of course, make sure to create such directory by: `mkdir -p $HOME/.local/bin`

2. Once you created `$HOME/.local/bin`, cd into that directory
3. Now compile the package you like with:

	apt-get source <PACKAGE>
	./configure
--->