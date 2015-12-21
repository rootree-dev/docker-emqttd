FROM erlang:18.1

RUN apt-get update && apt-get install -yq curl git unzip
RUN cd / && curl -sSL http://emqtt.io/downloads/ubuntu -o emqttd.zip && unzip emqttd.zip && rm -rf emqttd.zip

WORKDIR /emqttd

RUN cd /emqttd

ADD ./etc/plugin.config /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config
ADD ./run.sh /emqttd/run.sh
CMD ["/emqttd/run.sh"]
