ARG ELASTICSEARCH_VERSION
FROM elasticsearch:${ELASTICSEARCH_VERSION}
RUN bin/elasticsearch-plugin install analysis-smartcn
RUN mkdir -p /usr/share/elasticsearch/plugins/analysis-jieba cd /usr/share/elasticsearch/plugins/analysis-jieba && curl -fssL https://github.com/VMatrixTeam/elasticsearch-jieba-plugin/releases/download/v7.6.2/elasticsearch-jieba-plugin-7.6.2.zip \
    -o jieba-es.zip && unzip jieba-es.zip && rm jieba-es.zip
