ROOT_PATH=$1

# If path is not manually set, defaults to current working directory
if [[ ! $ROOT_PATH ]]; then
    ROOT_PATH=$(pwd)
else
    # Check if path exists
    if [[ ! -d $ROOT_PATH ]]; then
        echo "Path is not valid"
        exit 1
    fi 
fi


for dir in $(find $ROOT_PATH -maxdepth 5 -type d)
do
    # Removed any folder called "node_modules" and ignores any sub-folders
    if [[ $(basename $dir) == "node_modules" && $(echo "$dir" | grep -o "node_modules" | wc -l) -lt 2 && -d $dir ]]; then
        echo "Deleting $dir..."
        rm -rf $dir
    fi
done