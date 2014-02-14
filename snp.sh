snippets_dir="/Users/adaml/.snp"

if [ ! -d $snippets_dir ]; then
    echo "ERROR: $snippets_dir doesn't exist."
    echo "Create it now? [y/n]"
    read yn
    if [[ $yn == "y" || $yn == "Y" ]]; then
        mkdir $snippets_dir
    else
        exit 1
    fi
fi

case $1 in
    l)
        echo "$(ls -R $snippets_dir)" ;;
    m)
        if [[ -e $snippets_dir/$2 && -d $snippets_dir/$3 ]]; then
            mv $snippets_dir/$2 $snippets_dir/$3/$2
        fi ;;
    n)
        if [[ "$2" == "group" && "$3" != "" ]]; then
            mkdir $snippets_dir/$3
        elif [[ "$2" != "" && "$3" != "" ]]; then
            echo -n "$3" >> $snippets_dir/$2
        fi ;;
    r)
        if [[ "$2" == "group" && "$3" != "" ]]; then
            rm -rf $snippets_dir/$3
        elif [[ "$2" != "" && -e $snippets_dir/$2 ]]; then
            rm $snippets_dir/$2
        else
            echo "ERROR: profile $2 doesn't exist to remove."
            exit 1
        fi ;;
    c)
        if [[ "$2" != "" && -e $snippets_dir/$2 ]]; then
            cat "$snippets_dir/$2" | pbcopy
        else
            echo "ERROR: profile $2 doesn't exist to copy."
            exit 1
        fi ;;
    *)
        echo "snp usage:"
        echo "snp n <name> <text> # new"
        echo "snp n group <name> # new group"
        echo "snp l # list"
        echo "snp m <name> <group> # move"
        echo "snp r <name> # remove"
        echo "snp r group <name> # remove group"
        echo "snp c <name> # copy" ;;
esac
