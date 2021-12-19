# Node Modules Remover

CAUTION: This script runs the `rm -rf` command to delete the folder.

## Usage

Make the script executable if you get "permission denied"

```bash
$ chmod +x remove.sh
```

Then run the script

```bash
$ ./remove.sh
```

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
