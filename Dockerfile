FROM ubuntu

WORKDIR /app

COPY . /app

RUN c++ test.cpp && ./a.out

CMD ["sh", "/app/keep_alive.sh"]
