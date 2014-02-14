# snp

`snp` creates and manages text snippets in the terminal.

## Installation

To clone and install `snp`,

```
git clone https://github.com/adamlazz/snp; cd snp; chmod +x snp; mv snp /usr/local/bin
```

Running `snp` for the first time will give you the option to create your snippets directory.

## Usage

```
snp new <name> "<text>"   # new snippet
snp new group <name>      # new group
snp list                  # list snippets
snp move <name> <group>   # move
snp remove <name>         # remove
snp remove group <name>   # remove group
snp create <name>         # copy snippet (to clipboard)
```

* To reduce keystrokes, you are able to only use the first character of each functions name. For example, `snp new` can be replaced by `snp n`.
* Groups can be nested.
* To reference snippets that are in groups, use `group_name/snippet_name`
