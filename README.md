# Node Modules Remover

I'm tired of manually deleting all my node_modules folders, and since this is a tedious thing to do, you never do it. So here's a simple script to do that for you.

**Note: This only works on Windows by running bash or by using the [WSL](https://docs.microsoft.com/en-us/windows/wsl/about).**

## Usage

Make the script executable if you get "permission denied"

```bash
$ chmod +x remove.sh
```

Then run the script

```bash
$ ./remove.sh
```

**CAUTION: This script runs the `rm -rf` command to delete the folder(s).**

## Arguments

By default, the script will run from the current working directory. By adding a path as the first argument, the script will use that instead.

### Example

```bash
$ ./remove.sh /path/to/folder
```

## Alias

To make this script more useful, add the script's path as an alias to your .bashrc (Linux) or .zprofile (Mac).

```bash
...
alias ALIAS_NAME='/absolute/path/to/the/remove.sh'
...
```

Once added, source your source file

### Linux

```bash
$ source .bashrc
```

### Mac

```bash
$ source .zprofile
```
