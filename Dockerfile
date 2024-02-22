FROM ubuntu

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y g++

RUN c++ test.cpp && ./a.out

CMD ["sh", "/app/keep_alive.sh"]
