FROM erlang:18.1

RUN apt-get update && apt-get install curl git
RUN cd / && curl http://emqtt.io/downloads/ubuntu -o emqttd.zip && unzip emqttd.zip && rm -rf emqttd.zip

WORKDIR /emqttd

CMD ["run.sh"]
