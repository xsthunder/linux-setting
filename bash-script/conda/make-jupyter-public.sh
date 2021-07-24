jupyter notebook password # set password @see https://jupyter-notebook.readthedocs.io/en/stable/public_server.html
vim ~.jupyter/jupyter_notebook_config.json
{
  "NotebookApp": {
    "password": "...",
    "ip": "*"
  }
}
