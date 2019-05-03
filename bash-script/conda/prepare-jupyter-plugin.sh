set -e

# https://github.com/ipython-contrib/jupyter_contrib_nbextensions
conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user

# https://github.com/Jupyter-contrib/jupyter_nbextensions_configurator
conda install -y -c conda-forge jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

# https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation#add-vim_binding-to-ipython-notebook-extensions
mkdir -p $(jupyter --data-dir)/nbextensions
# Now clone the repository
cd $(jupyter --data-dir)/nbextensions
git clone --depth=1 https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding