FROM scratch
ADD root.tar.xz .

RUN apt install -y locales && \
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

RUN apt-get update
RUN apt-get -y install ruby gem git
RUN gem install shell
RUN mkdir work && cd work && \
git clone https://github.com/ETrobocon/RasPike.git && \
cd RasPike/sdk/workspace

CMD /bin/bash
