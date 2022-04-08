#############################################################
# @author Mia Hunt
# @github kaykay38
#############################################################
#!/bin/sh
flag=$1
file=$2
fileRestorePath="$(pwd)"
restoreStr="mv \"$HOME/.Trash/$file\""
while getopts "hr" arg; do
  case ${arg} in
    h)
      echo "showing usage!"
      usage
      ;;
    :)
      echo "$0: Must supply an argument to -$OPTARG." >&2
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 2
      ;;
  esac
done
if [[ $1 =~ "-r" ]]; then
    restoreCommand="$(grep "$restoreCommand" $HOME/Scripts/trash-cli/restore.txt)"
    sed "/$restoreStr/d" $HOME/Scripts/trash-cli/restore.txt
    $restoreCommand
elif [[ $1 =~ "-e" ]]; then
    echo "Are you sure want to permanently delete all items in the trash"" (yes/no)"
    read -p ">> " $answer
    if [[ "$answer" = 'yes' ]]; then
        rm -rf *
    fi 
else
    # echo "mv \"$HOME/.Trash/$file\" \"$fileRestorePath/\"" >> $HOME/Scripts/trash-cli/restore.txt
    `mv "$file" $HOME/.Trash/`
fi
