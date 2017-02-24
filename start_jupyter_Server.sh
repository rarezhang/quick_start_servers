echo "How to: bash start_Jupyter_Server.sh -p xxx"
echo "p: project name <under d:Projects>" 
echo "-------------------------------------"
while [[ "$#" -gt 0 ]]; do 
case $1 in
    -p) pro="$2"; shift 2;;
    -*) echo "unknown option: $1" >&2; exit 1;;
    *) handle_argument "$1"; shift 1;;
esac
done

echo "Jupyter running ..."
echo "-------------------------------------"

projectsPath=/cygdrive/d/Projects/
project=$projectsPath$pro
pushd $project; jupyter notebook; popd
