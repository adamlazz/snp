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
snp new <name> "<text>"   # New snippet
snp new group <name>      # New group
snp list                  # List snippets
snp move <name> <group>   # Move
snp remove <name>         # Remove snippet
snp remove group <name>   # Remove group
snp copy <name>           # Copy snippet (to clipboard)
```

* To reduce keystrokes, you are able to only use the first character of each functions name. For example, `snp new` can be replaced by `snp n`.
* Groups can be nested.
* To reference snippets that are in groups, use `group_name/snippet_name`
