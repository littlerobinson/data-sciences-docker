docker build . -t machine-learning-env
docker run -p 8888:8888 -v "$(pwd):/home/app" machine-learning-env