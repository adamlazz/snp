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
snp n <name> "<text>"     # new
snp n group <name>        # new group
snp l                     # list snippets
snp m <name> <group>      # move
snp r <name>              # remove
snp r group <name>        # remove group
snp c <name>              # copy
```
