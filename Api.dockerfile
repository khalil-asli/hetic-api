# start by pulling the python image
FROM python:3

# install the dependencies and packages in the requirements file
RUN pip install Flask
RUN pip install numpy
RUN pip install scikit-learn
WORKDIR /app
# copy every content from the local file to the image
COPY . /app

CMD ["python","app.py" ]