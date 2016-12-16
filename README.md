# Mac Build (using Ansible)


## Goal 

Secure and automated setup for macOS with little to no user intervention.

Although most sources had the MIT License applied my sources:
 * fgimian/macbuild: https://github.com/fgimian/macbuild
 * kcrawford/dockutil https://github.com/kcrawford/dockutil
 * fubarhouse/mac-dev-playbook https://github.com/fubarhouse/mac-dev-playbook
 * ricba/dotfiles https://github.com/ricbra/dotfiles
 * drduh/macOS-Security-and-Privacy-Guide https://github.com/drduh/macOS-Security-and-Privacy-Guide/blob/master/README.md
 * kristovatlas/osx-config-check https://github.com/kristovatlas/osx-config-check
 * https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/

## Usage 

```bash
git clone https://github.com/fgimian/macbuild.git
cd macbuild
./macbuild.sh
```

It is strongly suggested that you reboot your Mac after the first run
of this.

## Variable definitions



## License

Mac Build is released under the **MIT** license. Please see the
[LICENSE](https://github.com/fgimian/macbuild/blob/master/LICENSE) file for
more details.  Feel free take what you like and use it in your own Ansible
scripts.

## TODO

### Filevault2
```https://derflounder.wordpress.com/2015/02/02/managing-yosemites-filevault-2-with-fdesetup/```

### crontab to run mas update

### ssh keygen
### openssh update
### left off on software update
### Bugs
### remove safari
* seems as though you cannot install apple app store apps through ssh  as locally the apps install

