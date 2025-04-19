FROM yg397/thrift-microservice-deps:xenial

ARG NUM_CPUS=4

COPY ./ /vending-machine-microservices

RUN cd /vending-machine-microservices \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make -j${NUM_CPUS} \
    && make install \
    && cp OrderBeverageService /usr/local/bin/ \
    && cp WeatherService /usr/local/bin/

WORKDIR /vending-machine-microservices
