FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install required packages including Boost
RUN apt-get update && \
    apt-get install -y cmake g++ libthrift-dev libboost-all-dev make

WORKDIR /app

# Copy everything into the container
COPY . .

# Build the C++ service
RUN cmake . && make

EXPOSE 9091

CMD ["./BeveragePreferenceService"]
