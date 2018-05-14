# saltpress
My module for ICT4TN0224

Roope Varttila 2018

## What is saltpress?

Saltpress installs Wordpress in minutes.

**It's not secure at all**, so I'd suggest you'd switch out the passwords in mysql/init.sls and the secret phrases in wordpress/init.sls if you install it on an installed operating system rather than a live-USB (it's kind of made to be a one-time-use installation).

You can use it for stuff like trying out a new plugin or theme you're working on for Wordpress and need a fresh install.

## How do I use saltpress?

Clone the repository and move to the cloned directory
´´´bash
git clone https://github.com/roopelinux/saltpress.git
cd saltpress
´´´
Run the installation script and go to "localhost" in the browser you use
´´´bash
sudo bash saltpress.sh
firefox localhost
´´´

## Notes

Known to work on Xubuntu 16.04.4 LTS x64 live-USB, so if you find a problem on another distribution of Linux do tell me.

I'll answer each and every question/problem you have or if you just want to contact me, you can do so [on my site.](https://roopelinux.wordpress.com/info-stuff/)

