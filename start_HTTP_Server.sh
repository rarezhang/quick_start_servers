echo "How to: bash start_HTTP_Server.sh -p xxx"
echo "p: project name <under d:Projects>" 
echo "-------------------------------------"
while [[ "$#" -gt 0 ]]; do 
case $1 in
    -p) pro="$2"; shift 2;;
    -*) echo "unknown option: $1" >&2; exit 1;;
    *) handle_argument "$1"; shift 1;;
esac
done

echo "HTTP Server running ..."
echo "Navigate to http://localhost:8000/"
echo "-------------------------------------"

projectsPath=/cygdrive/d/Projects/
project=$projectsPath$pro
pushd $project; python -m http.server 8000; popd
