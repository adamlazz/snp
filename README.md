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
snp <name>                # Copy snippet to clipboard
snp paste <name>          # Paste name (from clipboard)
snp new <name> "<text>"   # New snippet
snp new group <name>      # New group
snp list                  # List snippets
snp move <name> <group>   # Move snippet to group
snp remove <name>         # Remove snippet
snp remove group <name>   # Remove group
snp help                  # Display usage
```

* To reduce keystrokes, you are able to only use the first character of each keyword's name. For example, `snp new group <name>` can be replaced by `snp n g <name>`.
* Groups can be nested.
* To reference snippets that are in groups, use `group_name/snippet_name`
* You can capture program output for a snippets text using for example: `snp new <name> "$(ls)"`

### Blanks in snippets

To create a snippet with a blank in it, use the `@` character. For example, `snp new <name> "hello @ world"`.

When copying or pasting snippets, the user is guided through filling the blanks of the snippet.
