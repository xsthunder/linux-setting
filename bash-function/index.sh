BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
alias jnb2py="jupyter-nbconvert --to=script"
alias ..="cd .."
alias gpu="nvidia-smi"
alias gpul="nvidia-smi -l 3"
alias gst="git status"
alias gc="git commit -m"
alias ga="git add"
alias gd="git diff"
alias gck="git checkout"
alias gp="git push"
source $BASH_DIR/x-conda.sh
source $BASH_DIR/x-screen.sh
source $BASH_DIR/watch-log.sh

