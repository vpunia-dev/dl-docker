## Description
This is a sample project for deep learning development, analysis and deployment.
The directory structure inside sample project allows experimentation/deployment using deep learning frameworks and various python libraries.

## Requirements
1. Docker: [Installation instructions(pending)](https://github.com/vpunia-dev/dl-docker/wiki/Docker-installation-instructions)
2. nvidia-docker2: [Installation instructions(pending)](https://github.com/vpunia-dev/dl-docker/wiki/Nvidia-Container-Toolkit-installation)

## Setup Instructions
##### Clone this repo
```
git clone https://github.com/vpunia-dev/dl-docker.git
```
##### Go inside repo and update the setup.sh variables.
```
export PYTHON_VERSION="3.6.9"    
export DOCKER_USER="DEMO_USER"  # user inside docker container
export PYTHON_VENV_NAME="DEMO_ENV" # conda virtual env name for python
export HOST_PORT="8888"           # application port on host. applciation will be accessed using this port
export DOCKER_PORT="8888" # application port inside docker 
export PJ_HOST_DIR="/project/path/on/local/system" # project dir on host machine
export PJ_DOCKER_DIR="/projects/sample_project" # project dir on docker.
```
##### Update ./tmpl/requirements.txt to change required python packages. 
4. Run setup.sh to create files to setup docker using variables defined in **step 2**. This will output various files in current dir.
```
bash setup.sh
```
##### Create docker image. Be careful about the image name and version. It should be understandble. This info will be used in next steps.
 eg. understandable_image_name=sample_python, version=0.0.1
```
docker build -t {understandable_image_name}:{version}  -f Dockerfile.gpu .
```
##### Check docker image id which you created in **step 4**. Run below command and check the column **IMAGE ID** in the row where REPOSITORY=understandable_image_name and TAG=version in **step 4**.
```
docker images
```
##### Run docker images. ${image id} is value you got from **step 5**. 
This will run jupyter notebook in ./sample_project/notebooks/ folder by default. You can modify the __./tmpl/docker_entrypoint.sh__ during **step 2** to run some other process.  
```
bash run_docker ${image id}
```

## Note
1. This is a sample project so you can modify the files inside ./tmpl to generate files as you want.
2. To enter into docker container you can uncomment line #6 and comment line #12. This will take you to linux like bash terminal for debugging or running scripts.
3. You can update cuda and ubuntu version in ./tmpl/Dockerfile.gpu

