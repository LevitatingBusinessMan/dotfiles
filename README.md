# DFCP
`dfcp` is a simple script I use to automatically sync my dot_files with github.
If you are trying to find my dotfiles, check the branches of this repo, `r-desktop` is my main workstation.
If you are trying to figure out how to use `dfcp` read on.

### How it works
`dfcp` will copy all your dotfiles to a git repo.
And it will then ask if it should push all changes to a remote repo.
It pushes the changes to remote `origin`, and uses the hostname of the machine as the branch name.

### Configuring
`dfcp` reads 2 environmental variables.
`DF_DIRECTORY`: Git repo where your dotfiles should be copied to (with a remote called `origin`).
`DOT_FILES`: List of folders and files to copy, seperated by `:`.
