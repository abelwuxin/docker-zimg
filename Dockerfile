FROM ubuntu:14.04
MAINTAINER Abel Deng "abeldeng@qq.com"
ENV REFRESHED_AT 2016-4-22-11-07

#
RUN apt-get update && apt-get install -y wget git g++ openssl cmake \
            libevent-dev libjpeg-dev libgif-dev libpng-dev libwebp-dev \
            libmagickcore5 libmagickwand5 libmemcached-dev libmagickwand-dev
            
# RUN cmake -D CMAKE_CXX_COMPILER="g++" \
#             CMAKE -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX:PATH="/usr/local"

#
# RUN wget http://www.openssl.org/source/openssl-1.0.1i.tar.gz \
#     && tar zxvf openssl-1.0.1i.tar.gz \
#     && cd openssl-1.0.1i \
#     && ./config shared --prefix=/usr/local --openssldir=/usr/ssl \
#     && make && make install && cd ..
    
#
# RUN wget http://www.cmake.org/files/v3.0/cmake-3.0.1.tar.gz \
#     && tar xzvf cmake-3.0.1.tar.gz \
#     && cd cmake-3.0.1 \
#     && ./bootstrap --prefix=/usr/local \
#     && make && make install && cd ..
#
# RUN wget http://cloud.github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz \
#     && tar zxvf libevent-2.0.21-stable.tar.gz \
#     && cd libevent-2.0.21-stable \
#     && ./configure --prefix=/usr/local \
#     && make && make install && cd ..

#
# RUN wget https://downloads.sourceforge.net/project/libjpeg-turbo/1.3.1/libjpeg-turbo-1.3.1.tar.gz \
#     && tar zxvf libjpeg-turbo-1.3.1.tar.gz \
#     && cd libjpeg-turbo-1.3.1 \
#     && ./configure --prefix=/usr/local --with-jpeg8 \
#     && make && make install && cd ..
#
# RUN wget http://downloads.webmproject.org/releases/webp/libwebp-0.4.1.tar.gz \
#     && tar zxvf libwebp-0.4.1.tar.gz \
#     && cd libwebp-0.4.1 \
#     && ./configure \
#     && make \
#     && make install && cd ..
#
# RUN wget http://www.imagemagick.org/download/ImageMagick.tar.gz \
#     && tar zxvf ImageMagick.tar.gz \
#     && cd ImageMagick-6.9.1-10 \
#     && ./configure  --prefix=/usr/local \
#     && make && make install && cd ..
#
# RUN wget https://launchpad.net/libmemcached/1.0/1.0.18/+download/libmemcached-1.0.18.tar.gz
#     && tar zxvf libmemcached-1.0.18.tar.gz \
#     && cd libmemcached-1.0.18 \
#     && ./configure -prefix=/usr/local \
#     && make &&　make install && cd ..
#
RUN git clone https://github.com/buaazp/zimg -b master --depth=1 \
    && cd zimg \  
    && make 

#
WORKDIR /zimg/bin
ADD zimg.lua /zimg/bin/
#
CMD ["./zimg", "zimg.lua"]
#
#
#
#
#
#
#
