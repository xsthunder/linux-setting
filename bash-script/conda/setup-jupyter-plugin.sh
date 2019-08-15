BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
echo $BASH_DIR

set -e

# https://github.com/ipython-contrib/jupyter_contrib_nbextensions
conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user

# https://github.com/Jupyter-contrib/jupyter_nbextensions_configurator
conda install -y -c conda-forge jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

# install vim
# https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation#add-vim_binding-to-ipython-notebook-extensions
mkdir -p $(jupyter --data-dir)/nbextensions
# Now clone the repository
cd $(jupyter --data-dir)/nbextensions
git clone --depth=1 https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding

# set up Snippets config
cp $BASH_DIR/config-files/snippets.json $(jupyter --data-dir)/nbextensions/snippets/snippets.json

# enable plugin
## vim_binding
jupyter nbextension enable vim_binding/vim_binding
## snippets
jupyter nbextension enable snippets/main
## freeze
jupyter nbextension enable freeze/main
## ExecuteTime
jupyter nbextension enable execute_time/ExecuteTime
## Toggle all line numbers
jupyter nbextension enable toggle_all_line_numbers/main
