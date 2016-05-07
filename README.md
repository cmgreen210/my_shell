# my_shell

## Installation
```bash
$ ( cd /tmp && git clone --recursive https://github.com/cmgreen210/my_shell.git && cd my_shell && ./install.sh )
```
The installation will backup your current `~/.bashrc` and `~/.bash_prompt` files to 
`~/.bashrc_backup` and `~/.bash_prompt`, respectively.

## Custom commands
The `~/.bashrc` file checks to see if there is an additional file `~/.bashrc_custom` and if it exists will run it.
