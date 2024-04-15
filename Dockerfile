FROM debian:stable-slim

RUN apt update && apt install wget unzip default-jre --no-install-recommends -yq

RUN wget https://www.belgenet.com.tr/statics/BelgenetImzaServisiKurulumDosyalari/Linux/1.0.56/signNativeOsService_Linux_1.0.56.zip -O belgenet.zip
RUN unzip belgenet.zip
RUN rm belgenet.zip

RUN rm /bin/systemctl || true
RUN ln -s true /bin/systemctl
RUN sed -i "s/sudo//g" /signNativeOsService/bin/systemctl/install.sh
RUN bash /signNativeOsService/bin/systemctl/install.sh

RUN apt clean
RUN rm -rf /usr/share/locale
RUN rm -rf /usr/share/man

CMD /usr/bin/java -jar /usr/local/signNativeOsService/signNativeOsService.jar
