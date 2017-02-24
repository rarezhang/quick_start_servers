echo "How to: bash start_TensorBoard_Server.sh -path xxx"
echo "path: path/to/log-directory" 
echo "-------------------------------------"
while [[ "$#" -gt 0 ]]; do 
case $1 in
    -path) path="$2"; shift 2;;
    -*) echo "unknown option: $1" >&2; exit 1;;
    *) handle_argument "$1"; shift 1;;
esac
done

echo "TensorBoard running ..."
echo "Navigate to http://localhost:6006/"
echo "-------------------------------------"
projectsPath=/cygdrive/d/Projects/
pushd $projectsPath; python -m tensorflow.tensorboard 6006 --logdir=$path; popd
