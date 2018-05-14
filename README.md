# saltpress
My module for ICT4TN022

Roope Varttila 2018

## What is saltpress?

Saltpress installs Wordpress and its requirements in minutes.

**It's not secure at all**, so I'd suggest you switch out the passwords in mysql/init.sls and the secret phrases in wordpress/init.sls if you install it on an installed operating system rather than a live-USB (it's kind of made to be a one-time-use installation).

The URL is set to localhost so the themes/plugins you install won't show on other devices than the machine you've installed Wordpress on. If you want, you can change it to your own adress (even a DHCP-adress will work) in the admin Dashboard under Settings - General to make them visible on other devices.

You can use Saltpress for stuff like trying out a new plugin or theme you're working on for Wordpress and need a fresh install.

### If you need to access Mysql the set credentials are
  
    user: root
  
    password: testi123

    user: wordpress
  
    password: wordpress

## How do I use saltpress?

Clone the repository and move to the cloned directory
```bash
git clone https://github.com/roopelinux/saltpress.git
cd saltpress
```
Run the installation script and go to "localhost" in the browser of your choosing
```bash
sudo ./saltpress.sh
firefox 'localhost'
```

## Notes

Known to work on Xubuntu 16.04.4 LTS x64 live-USB, so if you find a problem on another distribution of Linux do tell me.

Originally I was planning on making the Wordpress user to preseeded, but decided it makes more sense for the user to set them by themselves. It only takes a couple seconds and makes more sense.

I'll answer each and every question/problem you have or if you just want to contact me, you can do so [on my site](https://roopelinux.wordpress.com/info-stuff/) or by reporting an issue here on Github. All feedback is appreciated!

