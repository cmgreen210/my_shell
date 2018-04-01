# Notes
## `.bash_profile` vs `.bashrc`
`.bash_profile` is executed for login shells while `.bashrc`
is executed for interactive non-login shells.

### login or non-login?
If you login (duh?) to a console either locally or remotely
over ssh, this is a login shell and `.bash_profile` is 
executed before the initial command prompt.

Once logged in when you start a new shell `.bashrc` is run.

Of course there are exceptions: Mac OS X terminal runs a login
shell by default so it calls `.bash_profile`.

