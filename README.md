# My Dotfiles

## What is this?

These are a handleful of configuration files I use on most machines. I use the
`install` script to set them up on new machines, or to update them when I need
to make changes.

Be warned that these configuration files have only been tested for Debian 12
and Red Hat Enterprise Linux 9. They may or may not work on other Linux
distros, and they almost certainly won't work on non-Unix-like systems.

## How do I use them?

You can pick and choose files to copy into your home directory, or you can use
my script by running:

```sh
./install
```

This will replace symlinks, but will not delete or overwrite any existing
dotfiles you have.

