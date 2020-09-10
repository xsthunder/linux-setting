# see https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
# It will work as long as the last component of the path used to find the script is not a symlink (directory links are OK).

# only getting the top level bash script dir, but not the sub bash script dir.

BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
echo $BASH_DIR
