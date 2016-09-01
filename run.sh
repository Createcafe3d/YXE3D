DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
source venv/bin/activate
python src/main.py -tl INFO
