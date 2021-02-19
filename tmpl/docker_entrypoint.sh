
#!/bin/bash
# enters into project dir and creates notebooks dir if it does not exist already
cd ${PJ_DOCKER_DIR} && mkdir -p notebooks
# activates the python virtual environemt, enters into project dir and runs jupyter notebook inside notebooks dir of project
source activate ${PYTHON_VENV_NAME} && jupyter notebook --notebook-dir='./notebooks' --ip=0.0.0.0 --no-browser --allow-root
