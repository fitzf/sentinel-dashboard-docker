FROM adoptopenjdk/openjdk8:jre8u282-b08-alpine

LABEL maintainer="Zhangfei <zhangfei.eason@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
    && apk add --no-cache --update tzdata bash curl \
    && rm -rf /var/cache/apk/*

ARG app_name="sentinel-dashboard"
ARG build_version="1.8.1"
ARG run_java_sh_version="v1.3.8"

ENV TZ="Asia/Shanghai" \
    JAVA_APP_DIR=/deployments/${app_name} \
    JAVA_APP_JAR=/deployments/${app_name}/${app_name}.jar \
    JAVA_OPTIONS="-Dserver.port=8080 -Dproject.name=sentinel-dashboard -Dcsp.sentinel.dashboard.server=localhost:8080"

WORKDIR /deployments/${app_name}

VOLUME ["/root/logs/csp/"]

CMD /deployments/run-java.sh

# Set multiple labels at once, using line-continuation characters to break long lines
LABEL vendor=Zhangfei\ Incorporated \
    com.zhangfei.is-beta= \
    com.zhangfei.is-production="" \
    com.zhangfei.version=${build_version}

ADD https://raw.githubusercontent.com/fabric8io-images/run-java-sh/${run_java_sh_version}/fish-pepper/run-java-sh/fp-files/run-java.sh /deployments/run-java.sh
RUN chmod +x /deployments/run-java.sh
ADD https://github.com/alibaba/Sentinel/releases/download/v${build_version}/sentinel-dashboard-${build_version}.jar /deployments/${app_name}/${app_name}.jar
