# init a base image 
FROM python:3.10.5-alpine
# update pip to minimize dependency
RUN pip install --upgrade pip
# define the present working directory
WORKDIR /flask-sample
# copy the contents into the working dir
ADD . /flask-sample
# run PIP to install the dependencies of the flask app
RUN pip install -r requirements.txt
# define the command to start the container
CMD ["python", "hello.py"]
